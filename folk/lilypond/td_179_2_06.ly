%{
laz_179_2_06
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 152
 \time 2/4
d4 d8( c) | e( f) g4 | g8( f) f( e) | d2 | e4 f | f8( e) e( d) | d4 d|
\varA
\set Score.measureLength = #(ly:make-moment 3 4)
 s4\startTextSpan d2\stopTextSpan
 \set Score.measureLength = #(ly:make-moment 2 4)
 \bar "|." 
 s4 \fixB cis \fixC
 \bar "|." 
 \endm
\varA
d4\startTextSpan r\stopTextSpan
 \bar "|." 
}
\addlyrics { Зас- па- ло ми~й ди- тен- це под бял- чър- вен трин- да- фил }
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
%
\header{
  opus = "ТД-179,2,6"
  tagline = ##f
}


