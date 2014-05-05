%{
td_094_1_02
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 8 = 132
%\time 2/4
\cadenzaOn
\phrasingSlurDown
\acciaccatura { c16[ b] } c2( \grace { d16[\( c] } b8\)[ \grace { c16[\( b] } a8]\)
\grace { b16[\( c b a] } \afterGrace g2\)\( { \stdB a8\) \stdE } 
\afterGrace b4\( { a16[ b]\) } c8)
b16\prall[( a]) b\prall[( a g a] g8) g2 r4 f8 g16[( a])
\bar ""
b16[( a \afterGrace b8]\( { c16[ b a]\) } \afterGrace g2\( { \stdB a8\) \stdE } 
\afterGrace b8)\( { c16[ b a]\) } b16[( c]) \afterGrace b8(\( { c16[ b a]\) } 
\grace { b16[\( c b a] } g4.\)) g16 g8.\noBeam g2
 \bar "|." 
s4 \fixB d
 \bar "|."  
}
\addlyrics { Ей, ду- ма- ше, Сто- ян ма- ма си ду- ма- ше }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 132 8)
		}
	}
}
%
\header{
  opus = "ТД-94,1,2"
  tagline = ##f
}


