%{
TD_134_1_27
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 152
 \time 2/4
d8^"I певица"( e)] d([ c]) | b4. a8 | d([ e)] d4 | e e8\prall([ d)] | 
\varA
d\startTextSpan([ c)] b4\stopTextSpan | 
b4. d8 | c([ b)] b4 | b b \bar "||"
\varB
d8\startTextSpan^"II певица"( e)] d([ c\stopTextSpan]) | 
b4. a8 | e'4 d | 
\varC
e\startTextSpan e\stopTextSpan | 
\varA
d8\startTextSpan([ c)] b4\stopTextSpan | 
b4. d8 | c([ b)] b4 | b b
 \bar "|." 
 s4 \fixB cis,4 \fixC
  \bar "|."
\endm
\varA
d'8\startTextSpan([ c)] c\noBeam( b\stopTextSpan) \bar "||"
\varB
e4\startTextSpan d8([ c\stopTextSpan]) \bar "||" 
\varC
e4\startTextSpan d8([ e\stopTextSpan]) 
   \bar "|."
}
\addlyrics { Мар То- до- ро Ди- ми- ре- ва, Ди- ми- ре- ва, Дюл- ге- ре- ва 
             Мар То- до- ро Ди- ми- ре- ва, Ди- ми- ре- ва, Дюл- ге- ре- ва }
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
		tempoWholesPerMinute = #(ly:make-moment 152 4)
		}
	}
}
%
\header{
  opus = "ТД-134,1,27"
  tagline = ##f
}


