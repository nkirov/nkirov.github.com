%{
TD_138_1_31
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 126
  \time 2/4
  b4. c8 | d2 | 
\varA  
  e4\startTextSpan d8\prall([ c\stopTextSpan]) | 
  b4 \acciaccatura d8 e4 | d2 | b4. c8 | d2 | 
\break
\varB  
  \times 2/3 { e8\startTextSpan([ d c]) } c8([ d\stopTextSpan]) | 
\varC  
  c8\startTextSpan([ b]) b4\stopTextSpan | b2
 \bar "|." 
 s4 \fixB d,4 \fixC
 \bar "|."
\endm 
\varA  
  \acciaccatura d'8\startTextSpan e4 d8\prall([ c\stopTextSpan]) \bar "||"
\varB  
  \times 2/3 { e8\startTextSpan([ d c]) } d4\stopTextSpan \bar "||"
\varC  
  c4^\ltoe\startTextSpan b4\stopTextSpan
 \bar "|."
}
\addlyrics { Ма- ма Ка- ли- на бу- де- ше: Я ста- ни ра- но, Ка- ли- но }
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
  opus = "ТД-138,1,31"
  tagline = ##f
}


