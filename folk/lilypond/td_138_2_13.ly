%{
TD_138_2_13
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 112
  \time 2/4
b4. c8 | a2 | c4 \acciaccatura c8 d4 | \acciaccatura d8 c2 | b4. c8 | a2 | a4 a | a2\fermata
 \bar "|." 
 s4 \fixB ees4 \fixC
  \bar "|."
}
\addlyrics { Ра- де, бя- ло Ра- де, ко- му ма- ма ре- че }
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
		tempoWholesPerMinute = #(ly:make-moment 112 4)
		}
	}
}
%
\header{
  opus = "ТД-138,2,13"
  tagline = ##f
}


