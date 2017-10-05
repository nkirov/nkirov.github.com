%{
TD_140_2_49
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 152
  \time 2/4
 d4 d e e8( d) d8( c4 b8) b( c) d( c) b4.( a8) a4 b c d 
 b4.^\rtoe( a8) b( a) a4 a2
 \bar "|." 
 s8 \fixB f4 
 \bar "|." 
}
\addlyrics { Рус- ня на д'о- ри сто- я- ше, Ни- ко- ла из път вър- вя- ше }
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

\header{
  opus = "ТД-140,2,49"
  tagline = ##f
}

