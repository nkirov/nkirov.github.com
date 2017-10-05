%{
laz_134_2_24
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 160
\time 2/4
f4 g8( aes) | 
\varA
\acciaccatura b8\startTextSpan c2\stopTextSpan | 
\varBC
c8\startTextSpan( b aes[ b]) | a4\prall( g\stopTextSpan) | 
\parS
g2 | aes4 aes8-\parenthesize\prall( g) | f4 g8( aes) | 
\break
\varD
b8.\startTextSpan( c16 b4\stopTextSpan) | 
aes8( g4 aes8) |
\varE
aes4\startTextSpan\prall( g\stopTextSpan) | 
g2~ | g2 | g4^\ltoe g\fermata
 \bar "|." 
 s4 \fixB ees \fixC
 \bar "|."
\break %%\endm
\varA
\acciaccatura b'8\startTextSpan c4.( b8\stopTextSpan) \bar "||"
\varB
b16\startTextSpan( aes g4 b8) | a4.\prall( g8\stopTextSpan) \bar "||"
\varC
aes8\startTextSpan( g4 b8) | \acciaccatura b8 aes4.( g8\stopTextSpan) \bar "||" 
\varD
\acciaccatura b8\startTextSpan c4.( b8\stopTextSpan)  \bar "||" 
\varE
aes4.\startTextSpan\prall( g8\stopTextSpan) 
 \bar "|."
}
\addlyrics { При- пад- на- ли тъм- ни мъг- ли, при- пад- на- ли тъм- ни мъг- ли }
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
  opus = "ТД-134,2,25"
  tagline = ##f
}


