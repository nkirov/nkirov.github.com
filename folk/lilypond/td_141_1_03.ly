%{
TD_141_1_03
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 138
  \time 2/4
 a4 a8( b) | g4 a | a~ a16([ b a g)] | a4 b | c( d16 c b8) |
 a4 a8( b) g4 a\prall a2 |
 \varA
 a8\startTextSpan( b)  a4\stopTextSpan |
 a2\fermata
 \bar "|." 
 s4 \fixB d,4 \fixC
 \bar "|." 
\endm 
  \varA
 b'4\startTextSpan a\stopTextSpan 
 \bar "|."  
}
\addlyrics { Два ца- ря, ма- мо, два ца- ря, два ца- ря бой въз- диг- на- ли }
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
  opus = "ТД-141,1,3"
  tagline = ##f
}


