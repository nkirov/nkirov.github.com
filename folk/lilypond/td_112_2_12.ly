%{
laz_112_2_12
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 160
 \time 2/4
\varA
\acciaccatura b8\startTextSpan c2\stopTextSpan | 
\varB
b4.\startTextSpan a8\stopTextSpan | 
\varA
\acciaccatura b8\startTextSpan c2\stopTextSpan |
\varB
b4.\startTextSpan( a8\stopTextSpan) | 
a8 a4( g8) |
g2 | \acciaccatura g8 a2 | a4.( g8) | \acciaccatura a8 b4.( a8) | 
a8.([ b16] a8[ g]) | g8 g4. | g4 r 
 \bar "|."
s4 \fixB b, \fixC 
  \bar "|."
\endm  
\varA
\acciaccatura b'8\startTextSpan c4 \acciaccatura d8 c4\stopTextSpan \bar "||"
\varB
b8.\startTextSpan( c16) b8( a\stopTextSpan) 
\bar "|."  
}
\addlyrics { Рав- но йе по- ле ши- ро- ко, сред по- лье- то~й кла- дян- чи }
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
  opus = "ТД-112,2,12"
  tagline = ##f
}


