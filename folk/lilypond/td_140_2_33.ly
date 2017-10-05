%{
TD_140_2_33
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 152
  \time 2/4  
\acciaccatura c8 d4 c 
 \acciaccatura d8 e4 d c b8( d) d8( c b\prall g) a2
 \varA
 \acciaccatura b8\startTextSpan c4  \acciaccatura d8 \times 2/3 { c8( b g\stopTextSpan) }
\break 
 \acciaccatura a8 c4 \times 2/3 { d8( c b) } a( g) a4 
 \time 3/4 a2. \time 2/4 a2
 \bar "|." 
 s8 \fixB g4 s8 \fixC 
 \bar "|." 
  \varA
 \acciaccatura b8\startTextSpan c4 a\stopTextSpan 
 \bar "|." 
 } 
\addlyrics { Ал- тън бя- ла Бо- ря- нин- ко, що си гла- ва при- вър- за- ла }
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

\header{
  opus = "ТД-140,2,33"
  tagline = ##f
}


