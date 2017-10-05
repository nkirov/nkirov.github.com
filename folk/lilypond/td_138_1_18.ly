%{
TD_138_1_18
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 112
  \time 2/4
  d4 a | \acciaccatura c8 d2 | 
\varA  
  e8\startTextSpan([ d]) c4\stopTextSpan | 
  \acciaccatura c8 d4( \times 2/3 { e8[ d c]) } | 
\override Glissando #'style = #'zigzag  
  \noteF c8\glissando([ bes]) a4 | d c | \acciaccatura c8 d4( \times 2/3 { e8[ d c]) } | 
   d4 \noteF c8\prall\glissando([ bes]) | 
\varB  
  a4\startTextSpan a\stopTextSpan | a2\fermata 
 \bar "|." 
 s4 \fixB d,4 \fixC
 \bar "|." 
\endm
\varA  
  e'8\startTextSpan([ d]) d([ c\stopTextSpan)] \bar "||" 
\varB  
  a8\startTextSpan a4.\stopTextSpan  
 \bar "|." 
}
\addlyrics { Ле- льо Ра- де ле, Ра- де ле, ти на- деш ли се, ле- льо льо }
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
		tempoWholesPerMinute = #(ly:make-moment 112 4)
		}
	}
}
%
\header{
  opus = "ТД-138,1,18"
  tagline = ##f
}


