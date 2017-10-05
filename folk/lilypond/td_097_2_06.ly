%{
laz_097_2_06
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
\addlyrics { От- до- лу и- де, от- до- лу и- де  }
\addlyrics { мом- че ла- тин- че, мом- че ла- тин- че }
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
  opus = "ТД-97,2,6"
  tagline = ##f
}


