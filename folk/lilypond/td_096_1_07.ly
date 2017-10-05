%{
TD_096_1_07
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 138
  \time 2/4
  \override Glissando #'style = #'zigzag
\varA  
  a4\startTextSpan c8([ b\stopTextSpan)] | 
  c8([ b)] a4 | 
\varB  
  \noteFi \acciaccatura b8\startTextSpan\glissando c4^\rtoe c4\stopTextSpan | 
  c8([b] a4) | a8([ b]) c8([b]) | c4 b | a8 a4. | a2
 \bar "|." 
 s4 \fixB f4 \fixC
  \bar "|." 
\endm 
\varA  
  a8\startTextSpan([ b)] c8([ b\stopTextSpan)] \bar "||" 
\varB  
  b8\startTextSpan c4.\stopTextSpan 
  \bar "|." 
}
\addlyrics { Ми- си- чин- ке, Ди- нич- ке, ни грей ра- но- за- ра- но }
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
  opus = "ТД-96,1,7"
  tagline = ##f
}


