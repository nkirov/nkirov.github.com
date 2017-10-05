%{
laz_178_2_08
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 160
 \time 2/4
c4 d8( e) | f( e d4) | d4.( c8) | \acciaccatura e8 f4 f8( e) | d4 d| d2 | 
\varA
\set Score.measureLength = #(ly:make-moment 3 4)
s4\startTextSpan d2\stopTextSpan | 
\set Score.measureLength = #(ly:make-moment 2 4)
d4 d
 \bar "|." 
\endm
\varA
d4.\startTextSpan( c8\stopTextSpan) 
\bar "|."
}
\addlyrics { Гер- ги ма- ме ду- ма: Ма- мо, ми- ла ма- мо }
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
  opus = "ТД-178,2,8"
  tagline = ##f
}


