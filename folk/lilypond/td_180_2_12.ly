%{
td_180_2_12
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 88
\cadenzaOn
f8[( g]) d1 f8[( g]) \acciaccatura { g32[ a g f] } g1~ g4 
\afterGrace a4\(( { g32[ a g f]\) } g2.) d8[( s^\ltoe e]) 
f[( g]~ g4. f8) \acciaccatura f8 
g[( f]~ \afterGrace f2\( { g16[ f ees^"↑"]\) } d16[ c]) r8 r4
\bar ""
d8[( ees!]) f1 g8 g16.[( f32] \afterGrace g2.)\( { \stdB f8\) \stdE }
f8.\prall[( g16] f[ ees! d8]) d d\noBeam~ d2. d1\fermata( c8) r8^\rtoe
\bar ""
d8[( e]) \acciaccatura { f32[ g f e] } f1 g8 
f\noBeam( \afterGrace g2.)\( { a16^"↓"[ g f]\) } 
f16[( g] \afterGrace g4)\( { \stdB ees!8\) \stdE } d8^\ltoe d2 d1
\bar "|." 
s4 \fixB cis
\bar "|." 
}
\addlyrics { Ка- ра- джа Рад- ка ду- ма- ше: Ра- до мо, лю- бе, Рад- ке мо
е- сян са за- е- се- ня- ва }
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
  opus = "ТД-180,2,12"
  tagline = ##f
}


