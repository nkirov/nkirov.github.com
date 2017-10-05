%{
TD_138_1_15
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 116
 \time 2/4
% \tempo 8 = 168
% \time 7/16
b4 d | 
\parS
\override Glissando #'style = #'zigzag
\set Score.measureLength = #(ly:make-moment 3 4)
e \noteFi d-\parenthesize\prall\glissando \hideNotes a4 \unHideNotes | 
\set Score.measureLength = #(ly:make-moment 2 4)
b2 | \acciaccatura c8 d4 d8\prall([ c)] | b2 | b4 c | b\prall a | b2 | 
\varA
b4\startTextSpan b\stopTextSpan | 
b2\fermata
 \bar "|." 
 s4 \fixB d,4 \fixC
  \bar "|." 
\endm
\varA
b'8\startTextSpan b4.\stopTextSpan
 \bar "|."  
}
\addlyrics { Раз- бо- лял се " " е млад Ми- лен под бей- лич- ки- те хам- ба- ре }
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
		tempoWholesPerMinute = #(ly:make-moment 116 4)
		}
	}
}
%
\header{
  opus = "ТД-138,1,15"
  tagline = ##f
}


