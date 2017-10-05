%{
TD_134_1_28
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 152
  \time 2/4
 e8([ d]) c4 | 
\varA 
 \acciaccatura d8\startTextSpan e4 e8([ d\stopTextSpan]) | 
 d4 a | 
 \varB
 d4\startTextSpan d\stopTextSpan | 
 c8([ b]) a([ b]) | 
\varC 
 c8\startTextSpan([ d]) c([ b\stopTextSpan]) | 
\break 
 b([ a]) a4 | a a 
 \bar "|."
 s4 \fixB cis, \fixC
 \bar "|."
 \endm
\varA 
 \acciaccatura d'8\startTextSpan e4 e4\stopTextSpan \bar "||"
 \varB
 d4\startTextSpan d8([ c\stopTextSpan]) \bar "||"
 \varC 
 c4\startTextSpan c8([ b\stopTextSpan])
 \bar "|."
}
\addlyrics { Ер- ме- ли- я- Дер- ме- ли- я, Ер- ме- ли- я кон ко- ве- ше }
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
  opus = "ТД-134,1,28"
  tagline = ##f
}


