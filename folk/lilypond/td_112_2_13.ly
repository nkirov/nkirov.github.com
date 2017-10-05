%{
laz_112_2_13
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 176
 \time 2/4
 \parG
g4 c | c8( b) a( g) | g4.( f8) | 
\acciaccatura \parenthesize g8 a4 a | a a | \acciaccatura a8 b4 a8( g) |
g2 | g4 g
 \bar ":|" 
 s4 \fixB b,
\bar "|." 
}
\addlyrics { За- спа- ло ми~й ди- тен- ци под бял- чър- вен трън- да фьел, }
\addlyrics { май- ка му го бу- дье- ше: Ста- ни, ста- ни, ди- тен- ци }
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
		tempoWholesPerMinute = #(ly:make-moment 176 4)
		}
	}
}
%
\header{
  opus = "ТД-112,2,13"
  tagline = ##f
}


