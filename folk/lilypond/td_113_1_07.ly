%{
laz_113_1_07
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 168
 \time 2/4
g4 a8( b) | c( b) a4 | 
\varA
\acciaccatura b8\startTextSpan c4.( b8\stopTextSpan) | 
c8( b) c( d) |
d( c) c4\mordent | c8( b) a4 | a2 | a4 a 
 \bar "|." 
 s4 \fixB c, \fixC
 \bar "|."
 \endm
\varA
\set Score.measureLength = #(ly:make-moment 3 4)
s4\startTextSpan c'2\stopTextSpan  
 \bar "|."
}
\addlyrics { Ко- я- то ни~й ку- ма- та, на- пред, на- пред да вър- ви }
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
		tempoWholesPerMinute = #(ly:make-moment 168 4)
		}
	}
}
%
\header{
  opus = "ТД-113,1,7"
  tagline = ##f
}


