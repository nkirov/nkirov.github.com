%{
TD_138_1_01
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 120
  \time 2/4
 d4 a | c d | d2 | c4 d8\prall([ c]) | d2 | 
 \varA
 \acciaccatura c8\startTextSpan d4 d8\prall([ c\stopTextSpan]) |
 c8([ b]) c4 | b8.([ c16] b8[ a]) | a4 a | a2\fermata
 \bar "|." 
 s4 \fixB cis, \fixC
 \bar "|."
 \endm
  \varA
 \acciaccatura c'8\startTextSpan d4 d4\stopTextSpan
 \bar "|."
}
\addlyrics { Сто- ян на ма- ма ду- ма- ше: Ма- мо льо, ми- ла ма- мо льо }
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
  opus = "ТД-138,1,1"
  tagline = ##f
}


