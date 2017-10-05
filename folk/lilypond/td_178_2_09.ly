%{
laz_178_2_09
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 192
 \time 2/4
a4( f) | g a | a2 | g4 a | g d | g2 | a4 g | f( e) | f8( g) e4 | d2 d4 r
 \bar "|." 
}
\addlyrics { Ма- ма Ан- до- не ду- ма- ше: Ан- до- не, си- но Ан- до- не }
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
		tempoWholesPerMinute = #(ly:make-moment 192 4)
		}
	}
}
%
\header{
  opus = "ТД-178,2,9"
  tagline = ##f
}


