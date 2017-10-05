%{
td_097_2_16
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 60
\cadenzaOn
\phrasingSlurDown
\override Glissando #'style = #'zigzag
\acciaccatura f8 \afterGrace g4\( { \stdB a8\) \stdE } 
a4 g16[( a8 g16]) g[( f]~ f32[ g a g])
g2( a16[ g] f32[ g f16]~ f2) \breathe \bar ""
g16[( a8 g16])
\bar ""
g16[( \afterGrace f^\prall\( { e16[ f]\) } g8]) \acciaccatura g8 f2 r4 \bar ""
f16[( g8.\glissando]) a4\glissando g16[( a8 g16]) \times 2/3 { g16[( f g] } a16[ g])
\afterGrace g4^\ltoe(\( { a16[ g]\) } \grace { f16\([ g f e f] } g4\))
\bar ""
\parS
f32[( g f-\parenthesize\prall e] f[ g f e]) d4 d2
 \bar "|." 
s4 \fixB gis
 \bar "|."  
}
\addlyrics { Те- бе ли хва- лят хо- ра- та, че ра- но ра- ни млад Сто- ян }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 60 4)
		}
	}
}
%
\header{
  opus = "ТД-97,2,16"
  tagline = ##f
}


