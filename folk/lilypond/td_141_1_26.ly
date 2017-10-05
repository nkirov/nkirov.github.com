%{
td_141_1_26
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 80
\cadenzaOn
\parS
\phrasingSlurDown
a4 e'^\rtoe e8-\parenthesize^\prall[( d]) 
d4\mordent e16[( d]) d8(~ \afterGrace d2\( { e16[ d]\) }
c16[ d e8]~ \afterGrace e4)\( { \stdB d8\) \stdE } d8[( c16 b]) c8.[( b16])
\bar ""
b8[(\prall a]) a16[( g a8^\ltoe]) b16 a8.\noBeam(~ a2 g8) r r4
\bar "|:"
a16[( b8 g16]) d'4 e8[( d]) c([ b-\parenthesize^\ltoe]) 
\bar ""
d16 c8.\noBeam(~ c4 \times 2/3 { d8[ c b] } a2 g8) r a16[( b8 g16])
c8.[( b16]) b8.-\parenthesize^\ltoe[( a16]) a[( g a8]) b16 a8.\noBeam~ a2
 \bar ":|" 
s4 \fixB b,
 \bar "|."  
}
\addlyrics { Сно- щи ми- нах, ма- мо, край се- ло Ко- лю- би, край се- ло
Ко- лю- би, по- край Лю- ле- бур- гас }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 80 4)
		}
	}
}
%
\header{
  opus = "ТД-141,1,26"
  tagline = ##f
}


