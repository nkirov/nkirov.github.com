%{
laz_097_1_29
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 264
 \time 2/4
a4 c | b a | b2 | b4 b | a c | b a | b2 | b4 b
 \bar "|."
s4 \fixB f 
 \bar "|." 
}
\addlyrics { Зас- па- ло ми~й ди- тен- це под бял- чър- вен трин- да- фьел, }
\addlyrics { май- ка му го бу- де- ше: Ста- ни, ста- ни, ди- тен- це }
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
  opus = "ТД-97,1,29"
  tagline = ##f
}


