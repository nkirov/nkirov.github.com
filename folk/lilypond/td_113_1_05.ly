%{
laz_113_1_05
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 160
 \time 2/4
g4 c | b8( a) a( g) | g4.( f8) | \acciaccatura g8 a4 a | 
\varA
\acciaccatura g8\startTextSpan a4 a\stopTextSpan |
\varB
\acciaccatura a8\startTextSpan b4 a8( g\stopTextSpan) | 
g2 | g4 g 
 \bar "|." 
 s4 \fixB b, \fixC
 \bar "|."
 \endm
\varA
f'4\startTextSpan g\stopTextSpan \bar "||"
\varB
a4\startTextSpan  a8( g\stopTextSpan) 
 \bar "|." 
}
\addlyrics  { Ту- ка са ни ка- за- ли, и- ма мо- ма и ер- ген }
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
		tempoWholesPerMinute = #(ly:make-moment 160 4)
		}
	}
}
%
\header{
  opus = "ТД-113,1,5"
  tagline = ##f
}


