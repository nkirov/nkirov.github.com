%{
TD_138_1_20
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 126
  \time 2/4
 a4 a | \acciaccatura c8 d4( c4) | 
\varA 
 \acciaccatura c8\startTextSpan d4 c4\stopTextSpan | 
\varB 
 b\startTextSpan c\stopTextSpan | 
\varCD 
 \acciaccatura c8\startTextSpan b4( a4\stopTextSpan) | 
\varE 
 a8\startTextSpan([ b]) c16([ b a8\stopTextSpan]) | 
 a2 | a8([ b]) c4 | 
\varF
 b8\startTextSpan([ a]) a4\stopTextSpan | a2\fermata
 \bar "|." 
 s4 \fixB d,4 \fixC 
 \bar "|."
 \endm
 \varA 
 \acciaccatura c'8\startTextSpan d4  \acciaccatura d8 c4\stopTextSpan \bar "||"
\varB 
 \acciaccatura c8\startTextSpan b4 c\stopTextSpan \bar "||" 
\varC 
 b4\prall\startTextSpan( a4\stopTextSpan) \bar "||"
\varD 
\acciaccatura c8\startTextSpan b4(  \acciaccatura { c16[\( b] } a4\stopTextSpan)\) \bar "||"
\varE
 a8\startTextSpan([ b]) c8([ b\stopTextSpan]) \bar "||" 
 \varF
 b4\startTextSpan a4\stopTextSpan
 \bar "|."
}
\addlyrics { Ма- ма Ма- рин- чо ду- ма- ше: Си- но Ма- рин- чо, Ма- рин- чо }
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
		tempoWholesPerMinute = #(ly:make-moment 126 4)
		}
	}
}
%
\header{
  opus = "ТД-138,1,20"
  tagline = ##f
}


