%{
TD_136_1_14
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 144
  \time 2/4
d4 f g a a8( g) g( f)  \acciaccatura f8 g4 g d f g8( f)  \acciaccatura f8 g4
f8\prall( ees^"(↑)" ) d4 d4 d4\fermata
\bar "|."  
s4 \fixB gis,4 
\bar "|." 
}
\addlyrics { Ка- нят ме, ма- мо, мо- лят ме, ка- нят ме, ма- мо, мо- лят ме }
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
  opus = "ТД-136,1,14"
  tagline = ##f
}


