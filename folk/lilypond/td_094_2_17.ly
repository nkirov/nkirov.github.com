 %{
TD_094_2_17
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 120
% \time 2/4
\cadenzaOn
\override Glissando #'style = #'zigzag
\phrasingSlurDown
b4. c8 d4.( e8) \acciaccatura e8 d1 \breathe 
\acciaccatura d8 e4.( d8 e[ d]) d4 d \times 2/3 { e8[( d e]) } d4 d8[( c]) 
\bar ""
\afterGrace c4\( { \stdB b8\) \stdE } b4 \acciaccatura c8 d4.( c8) \acciaccatura c8 b1 \breathe 
\acciaccatura d8 e2( \times 2/3 { fis8[ e fis]) } e4 \times 2/3 { e8[( d e] } 
\noteFi d\glissando b\noBeam) b2
\bar ""
\acciaccatura c8 d2( \times 2/3 { e8[ d c] } d4) \acciaccatura c8 b1
 \bar "|." 
s4 \fixB c,
 \bar "|."  
}
\addlyrics { Край Ду- на- ва рос- на три- ва рас- те, край Ду- на- ва рос- на три- ва рас- те }
%
\layout {
     \context { 
	    \Staff \remove "Time_signature_engraver" } 
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
  opus = "ТД-94,2,17"
  tagline = ##f
}



