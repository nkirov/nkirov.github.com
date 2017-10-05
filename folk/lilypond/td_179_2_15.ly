%{
td_179_2_15
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 88
\cadenzaOn
f8 f\noBeam( g2 aes16[ g f]) f8([ g] \grace { f16\([ g f e] } f2\) g16[ f e]) r8^\rtoe
e16^\ltoe[( f^\rtoe]) f8\noBeam( g2 aes!16[ g f]) f16[( g])
\afterGrace g8^\rtoe\noBeam(\( { aes16[ g\)] } \grace { f16[\( g f e] } f2^\ltoe\) g16[ f e f])
\bar ""
\parS
e2( \times 2/5 { f16[ e-\parenthesize^"↑" des c bes)] } \bar "" r4 \acciaccatura e8 f4 \bar ""
f8([ g]~ g4 \grace { f16\([ g f e] } f4~\) \afterGrace f\( { g16[ f e f)]\) } \bar ""
e2( \times 2/5 { f16[ e des!^"↑" c bes!)] } \breathe \bar ""
c16[( des!^"↑"]) e[( f] g[ f e8])
\bar ""
des!8\noBeam c~ c2 c( des!16[ c bes!8]) r4 \bar ""
e8^\ltoe([ f^\rtoe]) \bar "" f[( g] \grace { f16[\( g f e] } f4^\rtoe\) g16[ f e f]) \bar ""
\afterGrace e4(\( { f16[ e]\) } des!16[ c bes!8]) r4^\ltoe
\bar ""
c16[( des!^\ltoe]) e[( f]~ f4 g16[ f e]) des!8\noBeam c~ c2. c 
 \bar "|." 
s4 \fixB c
  \bar "|." 
}
\addlyrics { Бе- ля- ла~й Ян- ка, Йен- ки мо, на Коч- бу- нар- ско кла- ден- че,
тъ- ня- но плат- но ле- не- но }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 88 4)
		}
	}
}
%
\header{
  opus = "ТД-179,2,15"
  tagline = ##f
}


