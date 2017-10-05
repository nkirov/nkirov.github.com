%{
laz_096_2_33
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 184
 \time 2/4
g4 a | g a | b( a) | a b | a g | 
\varAB
b\startTextSpan a\stopTextSpan | 
a2 | a4 a |
 \bar ":|" 
 \endm
\varA
\acciaccatura a8\startTextSpan b4 a\stopTextSpan \bar "||"
\varB
a\startTextSpan b\stopTextSpan 
\bar "|." 
}
\addlyrics { Ме- ла~й мо- ма дво- ро- ви, хем ги ме- ла, хем кле- ла }
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
		tempoWholesPerMinute = #(ly:make-moment 184 4)
		}
	}
}
%
\header{
  opus = "ТД-96,2,33"
  tagline = ##f
}


