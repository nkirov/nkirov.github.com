%{
TD_138_2_08
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 116
  \time 2/4
a4 d | 
\varA
d8\startTextSpan( e4 d8\stopTextSpan) | 
\varB
e4\startTextSpan d8\prall([ c\stopTextSpan]) | 
\acciaccatura d8 e4 d8\prall([ c]) | b2 | 
a4 b8([ c]) | 
\break
d2 | \acciaccatura e8 d4 c4 | b4^">" a | a2\fermata  
 \bar "|." 
 s4 \fixB cis,4 \fixC
  \bar "|." 
\endm
\varA
\acciaccatura d'8\startTextSpan e2\stopTextSpan \bar "||"
\varB
e4\prall\startTextSpan d4\stopTextSpan
   \bar "|." 
}
\addlyrics { О- ти- де Ра- де, Ра- де ле, на че- ир ся- но да сби- ра }
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
  opus = "ТД-138,2,8"
  tagline = ##f
}


