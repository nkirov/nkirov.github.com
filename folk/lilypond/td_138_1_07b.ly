%{
TD_138_1_07b
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 116
  \time 2/4
  d4 e | d8( e4  \phrasingSlurDown \grace { f16\([ e] } d8\)) \phrasingSlurNeutral | e4 d8\prall([ c]) | 
  \acciaccatura d8 e4 \acciaccatura e8 d4 |
  \times 2/3 { d8([ c b] } a4) | a4 a | a4.( b8) | 
\varA  
  c4\startTextSpan \times 2/3 { d8([ c b\stopTextSpan]) } | 
\varB  
  b8\prall\startTextSpan([ a]) a4\stopTextSpan | 
  a2\fermata
 \bar "|." 
 s4 \fixB cis,4 \fixC
 \bar "|." 
 \endm
\varA  
  c'4\startTextSpan c8\prall([ b\stopTextSpan]) \bar "||"
  \varB  
  b4\startTextSpan a\stopTextSpan 
 \bar "|." 
}
\addlyrics { От ца- ря фер- ман при- стиг- на, от ца- ря и от ве- зи- ря }
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
		tempoWholesPerMinute = #(ly:make-moment 116 4)
		}
	}
}
%
\header{
%%  opus = "ТД-138,1,7a"
  tagline = ##f
}


