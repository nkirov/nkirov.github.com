%{
TD_094_2_16
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 120
% \time 2/4
\cadenzaOn
\phrasingSlurDown
g8 a\noBeam \acciaccatura { b16[ c b a] } g4( a8[ g]) g2 \breathe
g16[( a]) b4.( c16[ b c b]) b[( c b a] g8[ \grace { a16[\( b a] } g8^\rtoe]\)) g2~ g4 r
\bar ""
\acciaccatura a8 b4.( a8) \acciaccatura b8 \afterGrace c4^\rtoe\( { \stdB b8\) \stdE } a 
a\noBeam( g4~ g \times 2/3 { a8[ g f] } e2) \breathe 
e16[( f]) g4.( \times 2/3 { a8[ b a)] } \afterGrace g4(\( { a16[ g]\) } 
\times 2/3 { f8 g^\rtoe f]) } e2
 \bar "|." 
s4 \fixB a,
 \bar "|."  
}
\addlyrics { Ма- ма Ян- ка ра- но бу- ди, ма- ма Ян- ка ра- но бу- ди }
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
		tempoWholesPerMinute = #(ly:make-moment 120 4)
		}
	}
}
%
\header{
  opus = "ТД-94,2,16"
  tagline = ##f
}


