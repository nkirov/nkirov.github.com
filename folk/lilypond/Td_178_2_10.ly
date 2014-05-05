%{
laz_178_2_10
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 152
 \time 2/4
d4 e | d c | d8( e~ e4\fermata) | e16( d c4.) | d4^\ltoe e^\rtoe | d c | d2\fermata | d
 \bar "|." 
}
\addlyrics { Про- чу- ла са~й Ра- да до- лу "в Ца-" ри- гра- да }
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
%
\header{
  opus = "ТД-178,2,10"
  tagline = ##f
}


