%{
kav_139_2_17
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 120
 \time 2/4
 a4 b | d16([ c b8] \acciaccatura { c16[ b] } a4) | a8( b) b4 |
 a8( g) \acciaccatura { g16[ fis e] } fis4 | d2 |
 \acciaccatura fis8 g4 a | 
 \acciaccatura a8 
\override Stem  #'stroke-style = #"grace" 
\slurDown 
 \afterGrace b2( { a8) } |
\slurNeutral 
\revert Stem #'stroke-style
\override Glissando #'style = #'zigzag 
 \times 2/3 { g8([ \noteFi fis\glissando e]) } d4 | e e | e2 
 \bar "|." 
 s4 \fixB c
 \bar "|." 
}
\addlyrics { Ди- мо То- дор- ке ду- ма- ше: Ли- бе То- дор- о, То- дор- ке }
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
  opus = "ТД-139,2,17"
  tagline = ##f
}


