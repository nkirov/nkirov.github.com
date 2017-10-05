%{
TD_138_1_02
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 120
  \time 2/4
\varA  
 a4\startTextSpan a8\noBeam g\stopTextSpan | 
\parS 
 a8([ b]) c-\parenthesize\prall([ b]) | c2 | 
 c8-\parenthesize\prall([ b]) a8([ g]) | 
 \varB
 a8\startTextSpan([ b]) c8.^\ltoe\noBeam b16 |  c8([ b]) a4\stopTextSpan | 
 a2^\rtoe | 
 \varC
 a4\startTextSpan a\stopTextSpan\fermata 
 \bar "|."
 s4 \fixB e4 \fixC
 \bar "|."
 \endm
\varA  
 a4\startTextSpan a8.\noBeam g16\stopTextSpan \bar "||"
 \varB
 a8\startTextSpan([ b^"↓"]) c8.^\ltoe\noBeam b16^\markup{ "↓" } |  c4 bes8([ a\stopTextSpan)] \bar "||"
\varC
 a8\startTextSpan a4.\stopTextSpan\fermata 
 \bar "|."
}
\addlyrics { Сто- ян То- до- ра ду- ма- ше: Лю- бе То- до- ро, То- дор- ке }
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
		tempoWholesPerMinute = #(ly:make-moment 120 4)
		}
	}
}
%
\header{
  opus = "ТД-138,1,2"
  tagline = ##f
}


