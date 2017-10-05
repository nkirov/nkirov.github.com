%{
laz_78_2_20
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 184
 \time 2/4
 \varA
g2\startTextSpan | \acciaccatura g8 a4 a | g2\stopTextSpan | 
\acciaccatura g8 f( e d e) | d4^\ltoe d^\rtoe | d2 |
\acciaccatura f8 g2 | f8( g) f( e) | 
\break
d2 | d2 | c4^\ltoe d^\rtoe | d2
 \bar "|." 
 s4 \fixB b \fixC
 \bar "|." 
 \endm
 \varA
\parS 
\acciaccatura f'8\startTextSpan g2 | f4 g8-\parenthesize^"↓"( a!-\parenthesize^"↓") | 
\acciaccatura a!8 g2\stopTextSpan
 \bar "|." 
}
\addlyrics { Пил Бог- дан ви- но чър- ве- но на Стам- бол, на Е- ди- ко- ля }
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
		tempoWholesPerMinute = #(ly:make-moment 184 4)
		}
	}
}
%
\header{
  opus = "ТД-179,2,20"
  tagline = ##f
}


