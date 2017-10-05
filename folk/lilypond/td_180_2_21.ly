%{
td_180_2_21
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 126
\cadenzaOn
\acciaccatura f8 g\noBeam g( a1\fermata) a8\noBeam a~ a1 % \bar ""
c16[( bes a bes] a[ bes! a g] a[ bes a g] a[ bes a g]) % \bar ""
g16([ a8.] \grace { g32[\( a g f] } g4\) a1\fermata) r4 r
\bar ""
a4^\ltoe a8[( g32 a g f] g1~ g8[ f]) g([ a]) a2 %\bar ""
a8[( g32 a g f] g16^\rtoe[ a g f] g^\rtoe[ a g f]  g^\rtoe[ a g f]) %\bar ""
f8([ g] \grace { g16[\( e] } f1\fermata\) 
\bar ""
f16[ g f e] f[ g f e]  f[ g f e]
\times 4/5 { f[ e d e c]) } r4 r %\bar ""
a'4 a8([ g32 a g f] g1~ g8[ f]) \breathe %\bar ""
g([ a]) a2 
\bar ""
a8[( g32 a g f] g16[ a g f] g[ a g f]  g[ a g f]) %\bar ""
f8([ g] \grace { f32[\( g f e] } f1\fermata\) f16[ g f e]  f[ g f e]  f16[ g f e] 
\times 4/5 { f[ e d e c]) } r4 r 
\bar""
g'4 g1(~ g8[ f]) f([ e]) f16[( g f e] f[ g f e] \times 4/6 { f[ g f e d e)] }
d4 d2\fermata( c4) r4 r d8([ e]) f1\fermata \breathe
\bar ""
g8([ a]) a2 a8([ g32 a g f] g16^\rtoe[ a g f] g^\rtoe[ a g f] g^\rtoe[ a g f]) 
f16([ g8.] \grace { f32\([ g f e] } f1\fermata\) f16[ g f e] f[ g f e] 
\times 4/5 { f[ e d e c]) } r4 r 
\bar ""
g'4 g1(~ g16[ a g f]) f8([ s^\ltoe e]) f16[( g f e] f[ g f e] \times 4/5 { f[ e d e c]) } d4^\ltoe d1\fermata
\bar "|." 
s4 \fixB cis
\bar "|." 
}
\addlyrics { Ге- на ма- ма ду- ма: Дай ме, ма- мо, дай ме,
дай ме, о- же- ни ме до- лу "в Тер-" фе- ли- и, до- лу "в Тер-" фе- ли- и,
"в Та-" нюв Ко- лю- ви- те }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 126 4)
		}
	}
}
%
\header{
  opus = "ТД-180,2,21"
  tagline = ##f
}


