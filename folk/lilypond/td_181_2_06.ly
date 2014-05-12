%{
td_181_2_06
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 112
\cadenzaOn
f8[( g]~  g2 a16[ g f8^\ltoe] \times 2/3 { g16[ a g } f8]) f[( ees]) d[( c]) d2.
f8[( g]~ g1 a8[ g16\prall f] \times 2/3 { g[ a g } f8])
\bar ""
f8[( g]) \bar ""
g16[( f8.]~ f2~ \bar ""
f8[ ees16 d] \times 2/3 { ees[f ees } d c]) \bar ""
c1~ c4 r \bar ""
f8[( g]~ g4~ g8[ f] \times 2/3 { g16[ a g } f8])
\bar ""
f8 f\noBeam( f4) \bar ""
f8[( g]) \afterGrace g4(\( { f32[ g f e]\) } f4) 
f8[( ees!]) d4 d1\fermata
 \bar "|." 
s4 \fixB ees!
 \bar "|."  
}
\addlyrics { Же- на- ла~й Ка- ля, Ка- льо мо, хем же- ни  Ка- ля, хем гле- да }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 112 4)
		}
	}
}
%
\header{
  opus = "ТД-181,2,6"
  tagline = ##f
}


