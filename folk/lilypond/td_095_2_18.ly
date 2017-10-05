%{
laz_095_2_18
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 168
 \time 2/4
g4 a8( b) | c4( d) | d c8( b) | d4 c8( b) | a2 | g4 g | c b | a2 | a4 a
 \bar "|." 
}
\addlyrics { Тъ- че ни- вя- ста ле- не- но плат- но, ле- не- но плат- но }
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
  opus = "ТД-95,2,18"
  tagline = ##f
}


