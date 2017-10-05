%{
td_180_2_01
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 132
\cadenzaOn
g8([ a]) a1.\fermata a8^\ltoe([ bes^\rtoe] \grace { a32[\( bes a g] } a1\)\fermata~
a8[ \grace { \stdB bes!8\( \stdE } a16\) g] 
a8[ \grace { \stdB bes8\( \stdE } a16\) g]
a8[ \grace { \stdB bes8\( \stdE } a16\) g] 
a8[ \grace { \stdB bes8\( \stdE } a16\) g]
a8[ \grace { \stdB bes8\( \stdE } a16\) g] f8\noBeam) r
\bar ""
g8([ a]) \bar "" a2. \bar "" a8([ bes!] \grace { \stdB bes!8\( \stdE } a16\)[ g a8] 
\grace {\stdB bes8\( \stdE } a16\)[ g f8]) \bar "" g4^\ltoe g1\fermata( a16[ g f8] \bar "" 
g[ f32 g f e] \bar "" f2
\bar ""
g16[ f e f] \bar "" g[ f e d] c8\noBeam) r8 r4 \bar "" f4 g8([ a]) 
bes!4(\prall \grace { a32[\( bes! a g] } a1\)\fermata~ \bar ""
a8[ \grace { \stdB bes!8\( \stdE } a16\) g] \bar "" 
a8[ \grace { \stdB bes8\( \stdE } a16\) g] \bar ""
a8[ \grace { \stdB bes8\( \stdE } \times 2/3 { a16\) g f)]  } 
\bar ""
g16[( a]) g8\noBeam(~ g1 a16[ g f8] g\prall[ f16 e] f8[ e16 c]) r4 d^\ltoe d^\rtoe d1\fermata
 \bar "|." 
s4 \fixB e
 \bar "|." 
}
\addlyrics { Ма- ма се вой- ник из- пра- ща във Ун- га- ри- я, на фрон- та }
%
\layout {
   \context { 
	    \Staff \remove "Time_signature_engraver" } 
  indent = #0
  line-width = 190\mm
  ragged-right=##f
}
%
\midi { 
	\context {
		\Score tempoWholesPerMinute = #(ly:make-moment 132 4)
		}
	}
}
%
\header{
  opus = "ТД-180,2,1"
  tagline = ##f
}


