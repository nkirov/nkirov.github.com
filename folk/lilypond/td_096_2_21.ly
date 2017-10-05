%{
laz_096_2_21
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 168
 \time 2/4
\varA
\acciaccatura g8\startTextSpan a4 a8( g\stopTextSpan) | 
\varB
a4\startTextSpan a\stopTextSpan | 
b\mordent( a8 g) | \acciaccatura g8 a4 a |
\acciaccatura a8 b4 a8( g) | 
\varB
\acciaccatura g8\startTextSpan a4 \acciaccatura a8 b4\stopTextSpan |
a2 | a4 a
 \bar "|." 
 s4 \fixB e \fixC
 \bar "|." 
\endm
\varA
\acciaccatura a8\startTextSpan b4 a8( g\stopTextSpan) \bar "||"
\varB
g4\startTextSpan a\stopTextSpan
 \bar "|."  
}
\addlyrics { Път- няк ми- на приз се- ло, път- няк ми- на приз се- ло }
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
  opus = "ТД-96,2,21"
  tagline = ##f
}


