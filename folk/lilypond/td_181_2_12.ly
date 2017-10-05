%{
td_181_2_12
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 120
%\time 2/4
\parG
\cadenzaOn
\acciaccatura f8 g4 g2.~ g8([ a] g[ f]) f1~ f4 r8. \ii \parenthesize c16 g'4 g2.( a16[ g f8])
f2~( f8[ g] a16[ g f e!]) e4
\afterGrace g4\(( { f32[ g f e]\) } f2 g16[ f ees d] c4) r8. 
\bar ""
\ii \parenthesize c16 d8([ ees]) 
f2.( g4 a16[ g f ees])  
\afterGrace g4\(( { f16[ e!]\) } f2 g16[ f ees d] c8) r8. 
\bar ""
\ii \parenthesize c16\noBeam \acciaccatura c8 f8 f16[( ees d ees]) d8\noBeam d~ d1 d2.( e!16[ d c8]) r4
\bar ""
d8([ ees]) f2.( g4 a16[ g f ees!]) \afterGrace g8(\( { f16[ ees\)] } f8~ f4 ees!16[ d c]) r16 
c4 f8([ ees!]) d4 d1 d
 \bar "|." 
s4 \fixB ees! 
  \bar "|." 
}
\addlyrics { Йот- го- ря "(а)" сли- зат тър- гов- ци, "(а)" тър- гов- ци, 
"(а)" мла- ди же- ле- пи, йот- го- ря, от бал- ка- ни- те }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 120 4)
		}
	}
}
%
\header{
  opus = "ТД-181,2,12"
  tagline = ##f
}


