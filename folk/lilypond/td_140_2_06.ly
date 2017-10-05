%{
sva_140_2_06
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 66
%\time 2/4
\cadenzaOn
\parG
\gliss
\parenthesize g8 a2 a a \noteFi \acciaccatura b8\glissando c16[( b^"↓" c b^"↓"]) 
\afterGrace a2\(( { \stdB g8\) \stdE } a16[ g8.]~ g2) r8 \parenthesize g 
\noteFi \acciaccatura b8\glissando c2^"↓" \times 2/5 { c16[( bes c a g)] } a2 
\times 2/3 { a16[( bes! a] } bes^\rtoe[ a])
\bar ""
g2.~ g8 r16 \parenthesize g a[( bes!^"↑" a8]) a\noBeam 
g\noBeam(~ \afterGrace g[\( { \stdB f\) \stdE } g]~ g4) g8([ a16])
a\noBeam~ a2.
 \bar "|." 
s4 \fixB e
 \bar "|." 
}
\addlyrics { "(и)" Ма- ри зъл- во льо, "(е)" ръ- ки ти бя- ли "(и)" ру- жън ли бра- ли }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 66 4)
		}
	}
}
%
\header{
  opus = "ТД-140,2,6"
  tagline = ##f
}


