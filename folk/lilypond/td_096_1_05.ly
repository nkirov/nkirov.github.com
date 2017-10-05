%{
td_096_1_05
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 8 = 152
\cadenzaOn
\phrasingSlurDown
f16[( g^"↑"]) g4^\rtoe gis8 c4.^"↓"( d32[ c b c] d16.[ c32] b16[ a]) 
b16\prall[( a32 gis!] a2.)
gis!16[( s^\ltoe a]) \bar "" \acciaccatura b8 c4.( d32[ c b c] \bar "" d16.[ c32] b16[ a])
\bar ""
b16[( a] gis![ a]~ a2.) r4 \bar "" e8^\ltoe gis!\noBeam a\noBeam 
\afterGrace b16[^\ltoe(\( { \stdB d8\) \stdE } c32 b] \bar ""
\afterGrace c4.\( { b16[ c]\) } d16.[ c32] b16[ a])
\bar ""
c16[( b] a16\prall[ gis!32 a] b[ a16.]) \breathe 
a16\noBeam gis!~ gis1^"↓" gis!\fermata^"↓"
 \bar "|." 
s4 \fixB d
 \bar "|."  
}
\addlyrics { Де- ню на Цвя- та ду- ма- ше: Я ми дай, Цвя- то, цър- ву- ли }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 152 8)
		}
	}
}
%
\header{
  opus = "ТД-96,1,5"
  tagline = ##f
}


