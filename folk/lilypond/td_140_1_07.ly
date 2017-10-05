%{
sva_140_1_07
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 152
\time 2/4
%\cadenzaOn
\varA
b4\startTextSpan b\stopTextSpan | 
\acciaccatura b8 d2 | 
\varB
d8\startTextSpan([ c]) b4\stopTextSpan |  
\acciaccatura b8 d2 | d8([ c]) b4 |
\acciaccatura b8 d4 d8([ cis]) | 
\break
d2 | d8([ c]) b([ a]) | 
\parS
b2-\parenthesize^\rtoe | b4 b
 \bar "|." 
 s4 \fixB d, \fixC
 \bar "|." 
 \endm
\varA
b'8\startTextSpan[( a]) b4\stopTextSpan \bar "||"
\varB
d8\startTextSpan([ c]) b8([ a\stopTextSpan]) 
 \bar "|."  
}
\addlyrics { Дес- пе- ни друж- ки, кар- даш- ки, те са на Дес- па ме- сар- ки }
%
\layout {
 %  \context { 
%	    \Staff \remove "Time_signature_engraver" } 
  indent = #0
  line-width = 190\mm
  ragged-right=##f
}
%
\midi { 
	\context {
		\Score tempoWholesPerMinute = #(ly:make-moment 152 4)
		}
	}
}
%
\header{
  opus = "ТД-140,1,7"
  tagline = ##f
}


