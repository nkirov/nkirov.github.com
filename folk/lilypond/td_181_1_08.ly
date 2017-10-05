%{
laz_181_1_08
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 160
 \time 2/4
d4.( c8) | e4 f | g2 | g8( f e4) | c d | d4.( c8) | f4( g16[ f e8]) |
d4 d | d2 | d4( c8 b) | c4 d | d r
 \bar "|." 
 s4 \fixB ees
  \bar "|." 
}
\addlyrics { Не- да "в ри-" ка- та пе- ре- ше, Стой- чо по бря- гом вър- ве- ше }
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
		tempoWholesPerMinute = #(ly:make-moment 160 4)
		}
	}
}
%
\header{
  opus = "ТД-181,1,8"
  tagline = ##f
}


