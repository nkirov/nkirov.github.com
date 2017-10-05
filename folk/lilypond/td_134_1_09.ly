%{
TD_134_1_09
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 100
%\time 5/16
\cadenzaOn
\phrasingSlurDown
\par
\iii \parenthesize a8
\acciaccatura d8 \afterGrace e1(\( { \stdB d8\) \stdE } 
\times 2/3 { e8[ d c] } \times 2/3 { b[ c d]) }
\varA
\afterGrace e4\startTextSpan\( { d16[ e]\) } d1( e4) \afterGrace e4(\( { d16[ e]\) } 
\grace { e16[\( d] } c4\)) d8 d\noBeam~ \afterGrace d4\( { \stdB e8\) \stdE } 
\afterGrace d4(\( { \stdB c8\) \stdE } \grace { c16[\( b] } a4\stopTextSpan\)) 
a1( g8) r
\bar ""
\acciaccatura c8 d2( \grace { e16[\( d] } e4\)) d \acciaccatura { c16[ b] } a2
\varB
\acciaccatura c8\startTextSpan d2 d16[( c]) d[( c b a]~ a8\stopTextSpan) 
a2. r4 g8[( a]~ a4) a1~ a2
 \bar "|." 
s4 \fixB a, \fixC
 \bar "|." 
%%s16 \clef treble
\varA
e''4\startTextSpan d1(~ d4. \times 2/3 { e16[ d c]) } 
\acciaccatura { d8 } \afterGrace e2(\( { \stdB d8\) \stdE } 
\grace { e16[\( d] } c4\)) d16[( e]) d4. \afterGrace d4(\( { c16[ b]\) } 
 \grace { c16[\( b] } a4\stopTextSpan\)) \bar "||"
 \varB
 \acciaccatura { b16\startTextSpan[ c] } \afterGrace d2.\( { \stdB c8\) \stdE } d4^\ltoe 
 d16[( c b a\stopTextSpan)]
  \bar "|." 
}
\addlyrics { и По- ма- ми Йов- ко ста- до- то край Ям- бол, край но- ва чу- у- шмя }
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
		\Score
		tempoWholesPerMinute = #(ly:make-moment 100 4)
		}
	}
}
%
\header{
  opus = "ТД-134,1,9"
  tagline = ##f
}


