%{
TD_138_1_05
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 126
  \time 2/4
 \varA 
  g4\startTextSpan c8([ b\stopTextSpan]) | 
  c4 a | 
\varB  
  g4\startTextSpan( \times 2/3 { a8[ g f\stopTextSpan]) } | 
  e2 | e8([ f]) g4 | \acciaccatura g8 a4 a8\prall([ g]) | g2^\rtoe | g2\fermata
 \bar "|." 
 s4 \fixB d4 \fixC
 \bar "|."
 \endm
 \varA 
  g4\startTextSpan b\stopTextSpan \bar "||"
 \varB  
  g4.\startTextSpan( f8\stopTextSpan) 
 \bar "|."
}
\addlyrics { Сед- на- ла Дра- га- на във рав- на гра- ди- на }
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
		tempoWholesPerMinute = #(ly:make-moment 126 4)
		}
	}
}
%
\header{
  opus = "ТД-138,1,5"
  tagline = ##f
}


