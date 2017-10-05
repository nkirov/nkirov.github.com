%{
laz_097_2_01
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 264
 \time 2/4
c4 b | a2 | g4 a | b c | b2 | b4 b
 \bar ":|" 
s4 \fixB f
 \bar "|."
}
\addlyrics { Тър- гу- вал Ми- чо, тър- гу- вал Ми- чо, }
\addlyrics { та из- тър- гу- вал, та из- тър- гу- вал }
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
		tempoWholesPerMinute = #(ly:make-moment 264 4)
		}
	}
}
%
\header{
  opus = "ТД-97,2,1"
  tagline = ##f
}


