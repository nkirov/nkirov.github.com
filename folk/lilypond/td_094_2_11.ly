%{
laz_094_2_11
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 152
\time 2/4
a4 b | a b8( c) | 
\varAB
d4\startTextSpan c\stopTextSpan\prall 
\varC
| b\startTextSpan a\stopTextSpan | 
\acciaccatura a8 b4 b8( a) |
\varD
a4\startTextSpan a\stopTextSpan | 
\varD
a\startTextSpan a\stopTextSpan | 
\varE
\acciaccatura a8\startTextSpan b4.( c8\stopTextSpan) | 
b2\fermata 
 \bar "|." 
 s4 \fixB cis, \fixC
 \bar "|." 
\endm
\varA
d'4\startTextSpan \acciaccatura d8 c4\stopTextSpan \bar "||"
\varB
d4\startTextSpan d8( c\stopTextSpan) \bar "||"
\varC
b4\startTextSpan \acciaccatura c8 b4\stopTextSpan \bar "||"
\varD
a8\startTextSpan a4.\stopTextSpan \bar "||"
\varE
\acciaccatura a8\startTextSpan b2\stopTextSpan
 \bar "|."  
}
\addlyrics { Сто- и Сто- ян на по- ла- да, сто- и Сто- ян на по- ла- да }
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
  opus = "ТД-94,2,11"
  tagline = ##f
}


