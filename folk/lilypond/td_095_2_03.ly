%{
TD_095_3_03
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 69
%\time 5/16
\cadenzaOn
\phrasingSlurDown
a4 \acciaccatura b8 c2( d16[ c \grace { d16[\( c b] } \afterGrace c8\)]\( {\stdB b\) \stdE }
\grace { c16[\( b a] } b8[\) \grace { c16[\( b] } a8]\)~ a4) b16 c8.\noBeam
b32[( c] \grace { b16[\( c b a] } b8.\))
\bar ""
a16[( b \grace { a16[\( b] } a8]\)~ a2) \bar "" r4 \bar "" 
\iii a8
\acciaccatura b8 c4 b32[( c] \grace { b16[\( c b a] } b8.\)~ b2 c16.[ b32] a8) \bar ""
b\noBeam c
\bar ""
b16[( c] \grace { b[\( c b a] } b8\)) \acciaccatura { a16[ b] } a2\fermata
 \bar "|." 
}
\addlyrics { Стой- не, за- ла- ди се, и Стой- не, през- плад- ни се }
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
		tempoWholesPerMinute = #(ly:make-moment 69 4)
		}
	}
}
%
\header{
  opus = "ТД-95,2,3"
  tagline = ##f
}


