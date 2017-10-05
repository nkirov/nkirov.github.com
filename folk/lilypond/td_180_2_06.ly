%{
td_180_2_06
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 80
\cadenzaOn
g16 g\noBeam( a8~ a2 bes16[ a g8]) \afterGrace a8\noBeam(\( { g32[ a g f]\) }
g8~ g2.~ g8[ f]) g([ a]) a2 a8([ s^\ltoe g]) 
\bar ""
\afterGrace a8\noBeam(\( { g32[ a g f]\) } g8~ g4.~ g16[ f]) \bar ""
\afterGrace g8\noBeam(\( { f32[ g f e]\) } f8~ f4. ees16[ d] c8\noBeam) r8 \bar ""
f([ g]) \acciaccatura { g16[ a g f] } g2.~( g8[ f16 e])
\bar ""
f16[( g] \grace { f16[\( g f e] } f4.\)~ f4 ees16[ d c]) \bar "" r16 \bar "" d4.^\rtoe( e8^"↓") \bar ""
f16[( e] \times 4/5 { e16^"↓"[ f e d e)] } d d8.\noBeam~ d2
\bar ""
d4( c8) r8 \bar "" f \acciaccatura { g16[ a g f] } g8~( g2~ g8[ f]) 
\afterGrace g8\(( { f32[ g f e\)] } f8~ f2 ees16[ d c]) r
\bar ""
d2(~ d8[ e^"↓"]) \afterGrace f4\( { e16[ d e]\) } d8^\ltoe d\noBeam^\rtoe~ d2 d1
 \bar "|." 
s4 \fixB c
  \bar "|." 
}
\addlyrics { Чу- вай- те, ма- ло~й го- ля- мо, как- во йе чу- до ста- на- ло!
Ста- на- ло, где йе ста- на- ло }
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
  opus = "ТД-180,2,6"
  tagline = ##f
}


