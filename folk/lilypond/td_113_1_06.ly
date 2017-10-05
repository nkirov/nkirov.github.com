%{
laz_113_1_06
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 160
 \time 2/4
\varA 
\set Score.measureLength = #(ly:make-moment 3 4)
s4\startTextSpan e2\stopTextSpan | 
\set Score.measureLength = #(ly:make-moment 2 4)
\parS
e4-\parenthesize\mordent( d8 c) | d2 | d4.( c8) | \acciaccatura d8 e4 e\mordent |
d4.( c16[ b]) | a2 | 
\break
\varB
c4\startTextSpan c8( b\stopTextSpan) | 
a2 | a
 \bar ":|" 
 s4 \fixB gis, \fixC
 \bar "|."
\endm
\varA 
\acciaccatura d''8\startTextSpan e2\stopTextSpan \bar "||" 
\varB
\acciaccatura b8\startTextSpan c4 c8( b\stopTextSpan) 
 \bar "|."
}
\addlyrics { Ка- ле- са- ли Въл- ка "в се-" ло, на Сма- вли- и }
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
  opus = "ТД-113,1,6"
  tagline = ##f
}


