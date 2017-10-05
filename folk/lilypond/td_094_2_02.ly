%{
TD_94_2_02
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 126
  \time 2/4
\varA  
  b4\startTextSpan \acciaccatura c8 d4\stopTextSpan | 
\varB
d4\startTextSpan b\stopTextSpan | 
  \acciaccatura c8 d4.( \times 2/3 { e16[ d c]) } | 
  d4 c8\prall([ b16 c]) | b2 | 
\varC
  c8\startTextSpan d4.\stopTextSpan | 
\varDE
  d4\startTextSpan b\stopTextSpan | 
  c4.( d8) | 
\varF  
  c8\prall\startTextSpan([ b16 c]) b4^\ltoe\stopTextSpan | 
  b2\fermata 
  \bar "|."
\break  
  s4 \fixB f \fixC
  \bar "|."
\endm
\varA  
  b4\startTextSpan c\stopTextSpan \bar "||" 
\varB  
  d8\startTextSpan([ c]) b4\stopTextSpan  \bar "||"   
\varC
  c4\startTextSpan d4\stopTextSpan \bar "||" 
\varD
  d8\startTextSpan([ c)] b4\stopTextSpan \bar "||" 
\varE 
  c8\startTextSpan([ d)] b4\stopTextSpan \bar "||"
\varF  
  c4\startTextSpan b4\stopTextSpan  
  \bar "|."  
}
\addlyrics { Ли- би- ли са два- ма мла- ди,
ли- би- ли са два- ма мла- ди }
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
  opus = "ТД-94,2,2"
  tagline = ##f
}


