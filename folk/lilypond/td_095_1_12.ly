%{
TD_095_1_12
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 66
%\time 5/16
\cadenzaOn
\phrasingSlurDown
a4 b8[( c]~ c2. d16[ c d8] c16[ b c8]) c16[( d s^\ltoe c d] c\prall[ b c d]) c[( b])
\afterGrace c8(\( { \stdB d\) \stdE } c16[ b \afterGrace c8]\( { \stdB b\) \stdE } 
\afterGrace c8[\( { \stdB b^↓\) \stdE } a16 b]) \bar "" a1\fermata
\bar ""
\break
 r4 b8 c16[( d] c[ d c32\prall b c16]) \afterGrace c8[(\( { d16[ c b]\) } 
\grace { c16[\( b] } a^\ltoe\) b]) a2. a1 
 \bar "|." 
 s4 \fixB e^↑
 \bar "|." 
}
\addlyrics { Га- но льо, до- ста ма, Га- но, ти лъ- га }
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
		tempoWholesPerMinute = #(ly:make-moment 66 4)
		}
	}
}
%
\header{
  opus = "ТД-95,1,12"
  tagline = ##f
}


