%{
td_179_2_30
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 144
\cadenzaOn
\phrasingSlurDown
g4 a g8[( a]~ a1 c32[ bes a16 bes32 a g16] a[ bes! s^\rtoe a g]) r4 g8 a\noBeam 
\acciaccatura { a16[ bes!] } a8^\rtoe( g32[ a g f] g1~ g8[ f])
\bar ""
\parS
\times 2/3 { g8[( a g] } \times 2/3 { a[ g f] } g8.-\parenthesize\prall[ f16])
f[( ees d c]) r4 r \bar "" f8 g\noBeam a16[( g] g32[ a g f] g4 f8) r \bar ""
f\noBeam \acciaccatura f g( \afterGrace g2.\( { f8\) } g16[ f ees! d])
\bar ""
d8 d\noBeam~ d2. d1\fermata r4 r \bar ""
f8 g\noBeam a[( g32 a g^\rtoe f] g8.[ f16]) \breathe \bar ""
\varA
f8\startTextSpan g\noBeam(~ \afterGrace g2.\( { a16[ g f]\) } f[ g f ees!\stopTextSpan])
d8 d\noBeam~ d2. d
 \bar "|." 
s4 \fixB b \fixC
 \bar "|." 
s16 \clef treble 
 \varA
f'8\startTextSpan \acciaccatura f g\noBeam(~ \afterGrace g2.\( { f16[ ees!]\) } f[ g f ees! d\stopTextSpan])
 \bar "|." 
}
\addlyrics { За- да- ло ми са~й, ма- ле мо, Йе- ни- зар- ски- я па- на- ир,
Йе- ни- зар- ски- я ес- ки- я " " ка- ра }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 144 4)
		}
	}
}
%
\header{
  opus = "ТД-179,2,30"
  tagline = ##f
}


