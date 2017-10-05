%{
TD_097_1_26
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 92
%\time 5/16
\cadenzaOn
\phrasingSlurDown
a4 \acciaccatura a8 b2.( c16^↑[ b a8]) b4 \acciaccatura c8 d2. 
\acciaccatura { d16[ c b] } c2(~ c8[ \afterGrace d]\( { \stdB c\) \stdE } b16[ c 
\grace { d16[\(  c] } b8\)]) b1 r4
\bar ""
a4 \bar "" \acciaccatura a8 b2( c16[ b a8]) b4 
\varA
c16\startTextSpan[( d32 c b c\stopTextSpan] 
\times 2/3 { d16[ c b } a8])
a1^\rtoe a
 \bar "|." 
s4 \fixB gis, \fixC
 \bar "|." 
s16 \clef treble
\varA
c'16\startTextSpan[ d32 c] d32[ c b c\stopTextSpan] 
 \bar "|."  
}
\addlyrics { Пре- би- ла~й Дра- га- на два дру- ма до ца- ря }
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
		tempoWholesPerMinute = #(ly:make-moment 92 4)
		}
	}
}
%
\header{
  opus = "ТД-97,1,26"
  tagline = ##f
}


