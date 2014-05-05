%{
TD_138_1_21
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 116
  \time 2/4
\varA  
 b8\startTextSpan([ c]) d4\stopTextSpan | 
 c2 | 
\varB 
 \acciaccatura c8\startTextSpan b8([ g]) a4\stopTextSpan | 
 \acciaccatura a8 c4 c | 
\varC 
 \acciaccatura c8\startTextSpan d4( c4\stopTextSpan) | 
\varD 
 d4\startTextSpan c8([ b^"↓"\stopTextSpan]) | 
 a2 | \acciaccatura a8 c4 c8\prall([ b^"↓"]) | a4 a | a2\fermata
 \bar "|."
 s4 \fixB d,4 \fixC
 \bar "|."
 \endm
\varA  
 c'4\startTextSpan \acciaccatura c8 d4\stopTextSpan \bar "||"
 \varB 
\override Glissando #'style = #'zigzag 
 c4\startTextSpan\prall\glissando a4\stopTextSpan \bar "||"
 \varC 
 d4\startTextSpan( \times 2/3 { e8[ d c\stopTextSpan)] }\bar "||"
\varD 
 c4\startTextSpan c8([ b^"↓"\stopTextSpan]) 
 \bar "|."
}
\addlyrics { Ма- ри То- до- ро, То- дор- ке, ма- ри, же- леп- ска дъ- ще- рьо }
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
  opus = "ТД-138,1,21"
  tagline = ##f
}


