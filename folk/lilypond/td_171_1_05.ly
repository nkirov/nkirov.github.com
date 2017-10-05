%{
TD_171_1_05
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 152
  \time 2/4
g4 a8( bes) a4.( g8) g2 a8( g) f4 \acciaccatura g8 a4 a g a8( bes) 
a4.( g8) g4.( f8) g4  f8( e) d2 d4 r4
 \bar "|." 
}
\addlyrics { Гра- ди мо- ма ви- сок чар- дак,  гра- ди мо- ма ви- сок чар- дак }
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

\header{
  opus = "ТД-171,1,5"
  tagline = ##f
}


