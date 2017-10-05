%{
laz_093_2_17
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%%\tempo 4 = 138
\time 2/4
g4 a8( b) | c2 | c8( b) c( d) | d( c) c( b) | a2 | g4 b8( c) | c( b) a4 | a2 | a4 a\fermata
 \bar "|." 
s4 \fixB e^"↑"
  \bar "|." 
}
\addlyrics { Тъ- че ни- вя- ста ле- ни- но плат- но и ко- при- не- но }
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
		tempoWholesPerMinute = #(ly:make-moment 138 4)
		}
	}
}
%
\header{
  opus = "ТД-93,2,17"
  tagline = ##f
}


