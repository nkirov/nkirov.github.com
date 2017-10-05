%{
TD_141_1_08
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 144
  \time 2/4
e4 \acciaccatura g8 a4 a8([ b a g)] a4 a\prall \acciaccatura g8 a4( g) 
\acciaccatura g8 a4 g \acciaccatura g8 a4 a8( g) g16( a b a g4) a16([ g8.)] 
g8\prall( f) e2^\rtoe e4 e\fermata
 \bar "|." 
 s4 \fixB b4 
 \bar "|." 
}
\addlyrics { Ма- ма си Да- на пле- те- ше на се- дем- де- се ре- ди- ци }
%
\layout {
  indent = #0
  line-width = 190\mm
  ragged-right=##f
}
%
\midi { 
	\context {
		\Score
		tempoWholesPerMinute = #(ly:make-moment 144 4)
		}
	}
}

\header{
  opus = "ТД-141,1,8"
  tagline = ##f
}


