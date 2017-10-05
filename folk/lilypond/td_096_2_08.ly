%{
TD_096_2_08
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 160
 \time 2/4
% \tempo 8 = 168
% \time 7/16
\varA
c4\startTextSpan c\stopTextSpan |
\varB
b\startTextSpan g\stopTextSpan | 
\acciaccatura a8 b4 b | \acciaccatura a8 g4 g | g8( a) b4 |
d4 c | 
\break
b g | \acciaccatura g8 a4 b | \acciaccatura b8 a4\rtoe g^\ltoe | g8 g4.\fermata
 \bar "|."
s4 \fixB d4 \fixC
 \bar "|."
\endm
\varA
b'4\startTextSpan c\stopTextSpan \bar "||"
\varB
b8\startTextSpan([ a)] g4\stopTextSpan
  \bar "|."
}
\addlyrics { По- хва- ли се Ка- ли- на- Ма- ли- на, 
по- хва- ли се Ка- ли- на- Ма- ли- на }
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
  opus = "ТД-96,2,8"
  tagline = ##f
}


