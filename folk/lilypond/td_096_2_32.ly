%{
laz_096_2_32
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
\addlyrics { За- спа- ло ми~й ди- тен- ци пoд бял- чър- вен трин- да- фьел, }
\addlyrics { май- чи- ца го бу- дье- ши: Ста- ни, ста- ни, ди- тен- ци }
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
  opus = "ТД-96,2,32"
  tagline = ##f
}


