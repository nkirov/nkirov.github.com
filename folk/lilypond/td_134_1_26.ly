%{
TD_134_1_26
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 152
 \time 2/4
 \varA
 b4\startTextSpan c\stopTextSpan | 
\varB 
 c8\startTextSpan([ b)] b([ a\stopTextSpan]) | 
 b2 | b8([ c)] \times 2/3 { b8[( a g]) } | a8( b4.) |
 b8( c)] b([ a)] | g( f)] e4 | 
 \parS
\varC  
 g4.\startTextSpan( f8\stopTextSpan-\parenthesize^"↑") | 
 f8-\parenthesize^"↑"([ e]) e4 | e2
 \bar "|." 
 s4 \fixB cis4 \fixC
 \bar "|." 
 \endm
\varA
 b'8\startTextSpan([ a)] b([ c\stopTextSpan]) \bar "||"
\varB 
 b4\startTextSpan b8([ a\stopTextSpan]) \bar "||"
\varC  
g4\startTextSpan \times 2/3 { a8([ g f\stopTextSpan)] }  
 \bar "|." 
}
\addlyrics { Ми- тьо на Дон- ка ду- ма- ше: Лю- бе Дон- ке ле, Дон- ке ле }
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
  opus = "ТД-134,1,26"
  tagline = ##f
}


