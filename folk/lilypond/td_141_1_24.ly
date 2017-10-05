%{
TD_141_1_24
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 144
  \time 2/4
g4 \acciaccatura b8 c4 b4.( a8) \acciaccatura b8 c4 c8( b) a( g) b( c) 
\parS
b-\parenthesize-\prall(  a g4)
b8( a) \acciaccatura b a( g) g4.( a8) b( a) b4 a g g2\fermata
 \bar "|." 
 s4 \fixB b,4 
 \bar "|."
}
\addlyrics { Ма- ри Ма- луш- ке ма- ми- на, Ма- луш- ке дво- ри ме- те- ше }
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
  opus = "ТД-141,1,24"
  tagline = ##f
}


