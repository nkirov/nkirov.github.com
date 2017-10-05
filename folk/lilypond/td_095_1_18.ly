%{
TD_095_1_18
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 72
%\time 5/16
\cadenzaOn
\phrasingSlurDown
a32[( b c b c8]~ c1~ c8[ d32 c d c] b[ c d c d8])
c16[( d c d] c[ b \afterGrace c8^\ltoe])\( { \stdB b\) \stdE }
\bar ""
\acciaccatura b8 \afterGrace c[(\( {\stdB  b\) \stdE } 
\grace { c16[\( b] } a8]\)~ a2.~
a8.[ b16] c8.) r16 \bar ""
c[( b]) b[( c] b32[ c b a b8])
b[( \grace { c16[\( b a] } b8]\) \grace { b16^>[\( a] } g2\)) r4
\bar ""
a8. b16\noBeam \afterGrace c8[(\( { \stdB d\) \stdE } 
\afterGrace c]\( { d16[c b]\) }
c8.[ \times 2/3 { d32 c b] } b8[ c] \times 2/3 { b[ c^\rtoe b]) }
b16[( a8.]~ a2) a1
 \bar "|." 
s4 \fixB e
 \bar "|."  
}
\addlyrics { Та- ньо льо, па- съл е Та- ньо ши- ле- та }
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
		tempoWholesPerMinute = #(ly:make-moment 72 4)
		}
	}
}
%
\header{
  opus = "ТД-95,1,18"
  tagline = ##f
}


