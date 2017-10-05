%{
laz_181_1_06
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 152
 \time 2/4
d4 d | d \acciaccatura fis8 g4 | fis e | d \acciaccatura fis8 g4 | fis e | 
c \acciaccatura d8 e4 | d2 | 
\break
d4.( e8) | 
\parS
fis4 e-\parenthesize\mordent | c \acciaccatura d8 e4 | d2 |
d4 r
 \bar "|."
 s4 \fixB c
 \bar "|." 
}
\addlyrics { Про- вик- на се, про- вик- на се Здрав- ко от пла- ни- на,  
Здрав- ко от пла- ни- на }
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
		tempoWholesPerMinute = #(ly:make-moment 152 4)
		}
	}
}
%
\header{
  opus = "ТД-181,1,6"
  tagline = ##f
}


