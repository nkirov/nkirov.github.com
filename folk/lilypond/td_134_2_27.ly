%{
laz_134_2_24
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 168
\time 2/4
f4 g8( aes) | 
\varA
\acciaccatura b8\startTextSpan c4( d16[ c b8\stopTextSpan]) | 
\varB
\acciaccatura b8\startTextSpan aes8( g b4\stopTextSpan) |  
aes4\prall( g) | g2 | 
\varC
b8\startTextSpan( aes) b4\stopTextSpan |
f4 g8( aes) | \acciaccatura b8 c4.( b8) | \acciaccatura aes8 g4( b) | 
\parS
aes4-\parenthesize\prall( g) | g2~ 
| g\fermata | 
\varD
g8\startTextSpan g4.\stopTextSpan\fermata
 \bar "|."
 s4 \fixB ees \fixC
\bar "|."
\endm
\varA
\acciaccatura b'8\startTextSpan c4.( b8\stopTextSpan) \bar "||"
\varB
\acciaccatura aes8\startTextSpan g4.( b8\stopTextSpan) \bar "||"
\varC
aes\startTextSpan( b) aes( g\stopTextSpan) \bar "||"
\varD
g4\startTextSpan g4\stopTextSpan\fermata
\bar "|." 
}
\addlyrics { И- ма ма- ма ми- ла си- на, ми- ла си- на, Ру- со- ли- на }
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
		tempoWholesPerMinute = #(ly:make-moment 168 4)
		}
	}
}
%
\header{
  opus = "ТД-134,2,27"
  tagline = ##f
}


