%{
laz_095_2_13
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 200
 \time 2/4
e4 d | c8( b) g4 | a( b) | c8( d c4) | e4 d | c8( b) g4 | a2 | a4 r
 \bar ":|" 
}
\addlyrics { Зла- то, мо- ме Зла- то, мно- го кит- ки но- сиш: }
\addlyrics { мно- го на стър- на- та, мал- ко на гла- ва- та }
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
		tempoWholesPerMinute = #(ly:make-moment 200 4)
		}
	}
}
%
\header{
  opus = "ТД-95,2,13"
  tagline = ##f
}


