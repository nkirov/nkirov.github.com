%{
laz_112_2_14
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 160
 \time 2/4
\varA 
\set Score.measureLength = #(ly:make-moment 3 4)
s4\startTextSpan g2\stopTextSpan | 
\set Score.measureLength = #(ly:make-moment 2 4)
f8( e) d4 | \acciaccatura g8 a2 | 
\varB
a8\startTextSpan( g f4\stopTextSpan) | 
g2 | f8( e) f4 | g2 | g4 r
 \bar ":|"
s4 \fixB c, \fixC
 \bar "|."
\endm
\varA
g'4\startTextSpan g\stopTextSpan \bar "||" 
\varB
a4\startTextSpan( g8 f\stopTextSpan) 
 \bar "|."
}
\addlyrics { Фър- ка- ла~й звиз- да из Ле- ком по- ле }
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
  opus = "ТД-112,2,14"
  tagline = ##f
}


