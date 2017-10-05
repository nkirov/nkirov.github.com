%{
laz_097_2_08
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 240
 \time 2/4
b4 c | a2 | g4 a | b c | a2 | g4 a | b c | b2 | c4 a | 
\varA
b\startTextSpan c\stopTextSpan | 
b2 | b4 b
 \bar "|."
 s4 \fixB f \fixC
  \bar "|."
  \endm
\varA
g\startTextSpan c\stopTextSpan
  \bar "|."  
}
\addlyrics { От- до- лу и- де, от- до- лу и- де мом- че ла- тин- че, 
мом- че ла- тин- че }
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
		tempoWholesPerMinute = #(ly:make-moment 240 4)
		}
	}
}
%
\header{
  opus = "ТД-97,2,8"
  tagline = ##f
}


