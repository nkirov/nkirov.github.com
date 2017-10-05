%{
td_140_2_07
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 66
\cadenzaOn
\par
\iii \parenthesize g8 
\afterGrace a2\( { g8\) } \acciaccatura b8 c2( d32[ c b16] c[ b] a[ g8.])
b4 c16[( b c b]) a8 g\noBeam~ g2 r4
\bar ""
\iii \parenthesize g8 
a8.^\rtoe[( b16]) c2( d32[ c b16] c[ b] a[ g8.]) b4 c16[( b c b]) a2. r8 a8 a2.
 \bar "|." 
s4 \fixB d,
 \bar "|."  
}
\addlyrics { и Ду- хни, вя- тро, ду- хни, 
и та раз- не- си, вя- а- тро }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 66 4)
		}
	}
}
%
\header{
  opus = "ТД-140,2,7"
  tagline = ##f
}


