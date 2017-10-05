%{
TD_138_1_11
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 132
  \time 2/4
\varA  
 gis8\startTextSpan([ a]) b4\stopTextSpan | 
 b8([ c]) b8([ c]) | \acciaccatura c8 d4 c4 | 
\parS 
 b4-\parenthesize\prall a | gis8([ a]) b4 | 
\varB 
 b8\startTextSpan([ c]) b8([ c\stopTextSpan]) | 
 b4-\parenthesize\prall a | \time 3/4 b2. | \time 2/4 b2~ | b
 \bar "|." 
s4 \fixB fis4 \fixC 
 \bar "|." 
\endm
\varA  
 a\startTextSpan b4\stopTextSpan
\varB 
 c4\startTextSpan b8([ c\stopTextSpan])
 \bar "|." 
}
\addlyrics { За- да- де са, по- да- де са, за- да- де са, по- да- де са }
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
		tempoWholesPerMinute = #(ly:make-moment 132 4)
		}
	}
}
%
\header{
  opus = "ТД-138,1,11"
  tagline = ##f
}


