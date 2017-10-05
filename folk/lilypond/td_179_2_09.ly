%{
sva_179_2_09
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 120
%\time 2/4
\cadenzaOn
\varA
s16\startTextSpan fis8\stopTextSpan\noBeam 
g([ a]) a([ g]) 
\varB
fis!4\startTextSpan(~ \afterGrace fis^\rtoe\( { e16[ d\stopTextSpan]\)) }
d2(~ d8[ e^\ltoe]) fis!4 g( a16[ g fis!\prall^\rtoe e]) 
\acciaccatura e8 fis!1( \grace { e16[\( fis! e d] } e1\)) r4 r
\bar "" \break
d8([ e]) fis!4 
\varC
s16\startTextSpan g4\stopTextSpan 
fis!2.( g16[ fis e8]) \acciaccatura fis!8 g( a16[ g fis e])
\varD
\afterGrace fis!4\startTextSpan( { e16[ d\stopTextSpan]) } 
d1 d2.( c4) r4 r
\bar "" \break
d8([ e]) fis!4 a8([ g]) 
\varE
fis2.\startTextSpan( e8\stopTextSpan\noBeam) 
\acciaccatura fis!8 g4( a16[ g fis e])
\parS
fis!4( e8-\parenthesize\prall[ d]) d1 d2.
 \bar "|." 
s16 \fixB cis4 \fixC
  \bar "|." 
%% s16 \clef treble
\break
 \varA
fis8\startTextSpan[( g\stopTextSpan]) \bar "||"
\varB
fis!4\startTextSpan(~ \afterGrace fis^\rtoe\( { g16[ fis e d\stopTextSpan]\)) } \bar "||"
\varC
a'8\startTextSpan([ g\stopTextSpan]) \bar "||"
\varD
\afterGrace fis!4\startTextSpan( { g16[ fis e d\stopTextSpan]) }  \bar "||"
\varE
fis2.\startTextSpan( g16[ fis e8\stopTextSpan\noBeam)] 
 \bar "|."   
}
\addlyrics { Я из- грей, слън- це, я из- грей ра- но ми ра- но "в ни-" де- ля,
да ви- диш, слън- це, да чу- еш }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 120 4)
		}
	}
}
%
\header{
  opus = "ТД-179,2,9"
  tagline = ##f
}


