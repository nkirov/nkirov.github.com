%{
TD_171_2_14
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 138
  \time 2/4
e8( d) d4 \acciaccatura fis8 g4.( fis8) fis( e) e( fis) 
\varA
fis\startTextSpan( e d4\stopTextSpan) 
fis8( e) e( d)
e4.( fis8) e( d) d4 d r4
 \bar "|."
\endm 
 fis16\startTextSpan( e d8~ d4\stopTextSpan)  
 \bar "|." 
}
\addlyrics { Дра- га- но, Дра- ган- ке, слън- це- то три- пе- ре }
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

\header{
  opus = "ТД-171,2,14"
  tagline = ##f
}



