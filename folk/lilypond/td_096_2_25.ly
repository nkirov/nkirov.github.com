%{
laz_096_2_25
%}

\include "td-preamble.ly"
%%\include "makam.ly"

\score {
\relative c' {
 \tempo 4 = 160
 \time 2/4
\acciaccatura f8 g4 \acciaccatura g8 a4 | a a | g16([ f8.]) \acciaccatura g8 a4 |
a\mordent a8\prall( g) | f4^\rtoe d^\ltoe | \acciaccatura f8 g4 g | f8^\rtoe( e) d4 | d d\fermata
 \bar "|."
 s4 \fixB cis^"↑" \fixC
 \bar "|." 
}
\addlyrics { За- ръ- ча, Не- но, ле- ля ти, за- ръ- ча, Не- но, ле- ля ти, }
\addlyrics { Не- но, на го- сти да и- деш, Не- но, на го- сти да и- деш }
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
  opus = "ТД-96,2,25"
  tagline = ##f
}


