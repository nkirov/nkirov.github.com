%{
TD_134_2_34
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 138
 \time 2/4
% \tempo 8 = 168
% \time 7/16
e2 \bar "||" 
\varA
g8\startTextSpan([ a)] a16([ g a b\stopTextSpan)] | 
\varB
\parS
a4\startTextSpan a8-\parenthesize\prall([ g\stopTextSpan)] | 
g\prall([ f] e4) | 
\varC
g4\startTextSpan g8\prall([ f)] | e2\stopTextSpan | 
g4 g8\prall([ f)] | 
\varB
g4\startTextSpan f8-\parenthesize\prall( e\stopTextSpan)] | 
e2~ | e\fermata | e8 e4. | e2
 \bar "|."
 s4 \fixB d4 \fixC
 \bar "|."
 \endm
\varA
g8\startTextSpan([ a)] a8\prall([ g\stopTextSpan)] \bar "||"
\varB
\acciaccatura b8\startTextSpan a4 a8-\parenthesize\prall([ g\stopTextSpan)]  \bar "||"
\varC
g4\startTextSpan^\ltoe g8^\rtoe([ a)] | f8( e4.\stopTextSpan) 
 \bar "|."
}
\addlyrics { и Га- то, ма- мо льо, тръг- нах ми на пръв ви- ли- ки чи- твър- тък }
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
		tempoWholesPerMinute = #(ly:make-moment 138 4)
		}
	}
}
%
\header{
  opus = "ТД-134,2,34"
  tagline = ##f
}


