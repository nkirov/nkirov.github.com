%{
td_180_1_19
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 100
\cadenzaOn
\par
\ii \parenthesize c8
f16[( g8.]~ \afterGrace g2\( { a16[ g f]\) } g[ a g f]) f[( ees]) 
d8~ \afterGrace d4\( { ees!16[ d c]\) } d8[( ees!]) f[( g]~ g2. a16[ g32 a g16 f] g[ a g f^\rtoe]) \breathe
\bar ""
\varA
f8\startTextSpan[( g]) \bar "" g16[( f32 g] f16[ ees!] \bar "" f2. \bar ""
\times 2/6 { g16[ f ees! d ees f] } 
\times 2/5 { e[ d e d c]) } c2. r4\stopTextSpan \bar ""
f8[( g]~ g[ f])
\bar ""
f8 f\noBeam~ f4 \bar ""
\varB
f8\startTextSpan g\stopTextSpan \noBeam( 
\grace { f32[\( g f ees!] } f2\) ees!16[ d c8]) \bar "" d8^\ltoe d\noBeam^\rtoe d1
 \bar "|." 
s4 \fixB d \fixC
 \bar "|." 
 s16 \clef treble
 \varA
 g8\startTextSpan \bar ""
 f16[( g] \grace { f32[\( g f ees!] } f2.\) \bar ""
 g32[ f ees! c] d[ ees! d c]) c2. r8.
\ii  \parenthesize f16\stopTextSpan \bar "||"
\varB
g8\startTextSpan f16[ g\stopTextSpan \noBeam] 
 \bar "|."  
}
\addlyrics { а По- съб- ра Ста- ньо, Ста- ньо льо, дор си- дим- ди- се ди- вой- ке 
" " ди- вой- ке а }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 100 4)
		}
	}
}
%
\header{
  opus = "ТД-180,1,19"
  tagline = ##f
}


