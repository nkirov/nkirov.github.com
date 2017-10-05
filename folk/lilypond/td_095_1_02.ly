%{
td_095_1_02
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 92
\cadenzaOn
\phrasingSlurDown
c8([ d]) d[( e] \grace { \stdB e\( \stdE } d4\)\mordent 
\grace { \stdB e8\( \stdE } d16[\) c~ c8]~ c2\fermata d4)
d8[( \grace { e\( } d\mordent\)] c16[ b c8]~ \afterGrace c4)\( { b16[ a b]\) }
\bar ""
b8\noBeam c16[( d] \grace { \stdB d8\( \stdE } c2\mordent\) \grace { d16[\( c] } d4\))
d16[( c8.] \times 2/3 { b16[ a b } c8]) c[( b]) b16[( c8.]) c8\noBeam( \grace { b16[\( c b] } a8)\)
a2. a
 \bar "|." 
}
\addlyrics { Го- во- ри, бра- тец си Ца- ни го- во- ри }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 92 4)
		}
	}
}
%
\header{
  opus = "ТД-95,1,2"
  tagline = ##f
}


