%{
TD_139_1_21
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 126
  \time 2/4
\varA
d8\startTextSpan([ cis]) d4\stopTextSpan | 
e2 | f4-\parenthesize\mordent e8\prall([ d]) | 
\parS
d4 e8([ d]) | e2 | 
\varBC
e8\startTextSpan([ d]) e16([ d c8\stopTextSpan]) | b2 | 
\varD
e8\startTextSpan([ d]) e16([ d c8\stopTextSpan]) | 
b4 b | b2\fermata 
 \bar "|." 
s4 \fixB gis4 \fixC 
  \bar "|."
\endm  
\varA
d'4\startTextSpan e4\stopTextSpan \bar "||" 
\varB
\acciaccatura f8\startTextSpan e8([ d)] d16([ e d c\stopTextSpan]) \bar "||" 
\varC
e4\startTextSpan d16([ e d c\stopTextSpan]) \bar "||" 
\varD
d4\startTextSpan d16([ c b8\stopTextSpan])
\bar "|."
}
\addlyrics { Ма- ри То- до- ро, То- дор- ке, ма- ри же- леп- ска дъ- ще- рьо }
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
  opus = "ТД-139,1,21"
  tagline = ##f
}


