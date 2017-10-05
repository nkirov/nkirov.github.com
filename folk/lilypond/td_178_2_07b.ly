%{
laz_178_2_07b
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 120
 \time 2/4
 d4 e | d c | \acciaccatura d8 e2^\rtoe | e8( d c4) | d4^\ltoe e^\rtoe |
 \varA
 d\startTextSpan^\ltoe c8^\rtoe( d\stopTextSpan) | 
 d2^\rtoe | d2 
 \bar "|." 
\endm
 \varA
 d4\startTextSpan^\ltoe c4\stopTextSpan
  \bar "|." 
}
\addlyrics { Чий са тез дво- ро ве, Ван- чо- ви дво- ро- ве }
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
		tempoWholesPerMinute = #(ly:make-moment 120 4)
		}
	}
}
%
\header{
  opus = "ТД-178,2,7b"
  tagline = ##f
}


