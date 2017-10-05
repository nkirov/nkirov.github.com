%{
TD_138_1_22
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 132
  \time 2/4
 \acciaccatura b8 c4.( b8) | 
 \varA
 c4\startTextSpan c8([ b\stopTextSpan]) | 
 \varA
 c4\startTextSpan c8([ b\stopTextSpan]) | 
 \varB
 c4\startTextSpan c8([ b\stopTextSpan]) | 
 a2 | b2 | c4 b8([ a]) | 
 \break
 b4 b | 
 \parS
 \varC
 a4\startTextSpan-\parenthesize\prall g\stopTextSpan | 
 g2\fermata
 \bar "|."
 s4 \fixB d4 \fixC
 \bar "|." 
 \endm
 \varA
 c'4\startTextSpan b\stopTextSpan \bar "||"
 \varB
 c4\startTextSpan b\prall\stopTextSpan \breathe \bar "||"
\varC
 a8\startTextSpan g4.\stopTextSpan
 \bar "|." 
}
\addlyrics { Ди- мо льо, ти- ли- фи- ри- не, Ди- мо льо, пех- ли- ва- ни- не }
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
  opus = "ТД-138,1,22"
  tagline = ##f
}


