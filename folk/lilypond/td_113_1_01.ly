%{
laz_113_1_01
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 160
 \time 2/4
 g4 c | 
 \varA
 c8\startTextSpan( b) a( g\stopTextSpan) | 
 g4.( f8) | \acciaccatura g8 a4 a | 
 \varB
 a\startTextSpan a\stopTextSpan | 
 \acciaccatura a8 b4 a8( g) | 
 \break
\varC 
\set Score.measureLength = #(ly:make-moment 3 4)
 s4\startTextSpan g2\stopTextSpan | 
\set Score.measureLength = #(ly:make-moment 2 4) 
 g4 g
 \bar ":|" 
 s4 \fixB b, \fixC
 \bar "|."
 \endm
\varA
 b'8\startTextSpan( a) a( g\stopTextSpan) \bar "||"
 \varB
\acciaccatura g8\startTextSpan a4 a\stopTextSpan \bar "||"
 \varC 
 g4.\startTextSpan g8\stopTextSpan 
 \bar "|."
}
\addlyrics { Ту- ка са ни ка- за- ли, и- ма мо- ма ху- ба- ва, }
\addlyrics { и- ма мо- ма ху- ба- ва, ре- че- те и "да йз-" ле- зи }
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
  opus = "ТД-113,1,1"
  tagline = ##f
}


