%{
laz_181_1_07
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 144
 \time 2/4
d4 d | g2 | g4.( fis8) | 
\varA
fis\startTextSpan( e) e( fis\stopTextSpan) | 
fis4 e | d e | fis4.( e8) | d2 |
\varBC
\acciaccatura fis8\startTextSpan g4 d\stopTextSpan | 
d2 | d4 r
 \bar "|." 
 s4 \fixB cis \fixC
  \bar "|." 
\endm
\varA
fis8\startTextSpan( e) g4\stopTextSpan \bar "||"
\varB
\acciaccatura d8\startTextSpan e4 e8( d\stopTextSpan) \bar "||"
\varC
fis4\startTextSpan e\stopTextSpan 
 \bar "|."   
}
\addlyrics { Нед- ко си- ди на- ви- со- ко, на- ви- со- ко, на- ши- ро- ко }
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
		tempoWholesPerMinute = #(ly:make-moment 144 4)
		}
	}
}
%
\header{
  opus = "ТД-181,1,7"
  tagline = ##f
}


