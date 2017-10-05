%{
TD_096_2_27
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 168
 \time 2/4
% \tempo 8 = 168
% \time 7/16
\parS
g4 b | c b | a-\parenthesize\prall g | 
\acciaccatura a8 b2 | a4 b | c b | a8( g) g4 | g2
 \bar "|." 
s4 \fixB e4 
  \bar "|."
}
\addlyrics { Га- на тур- чин за- лю- би, 
Га- \startTextSpan не, луд- да по- лу- да, \stopTextSpan }
\addlyrics { на шъ- га го~й лю- бя- ла }
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
  opus = "ТД-96,2,27"
  tagline = ##f
}


