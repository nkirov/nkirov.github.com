%{
td_180_1_20
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 80
\cadenzaOn
\parG
\override Glissando #'style = #'zigzag
\ii \parenthesize d8 f2. g8 a\noBeam bes[( a)] bes!16[( c] bes32[ c bes a] bes!2.\glissando
c8.[ bes!16] \afterGrace a2.\( { g16[ a]\) } bes!16[ a g f]) r4
\bar ""
g8([ s^\ltoe aes]) \bar "" g\prall[( \times 2/3 { f16\prall e f] } \bar "" 
g[ f e f]) \bar "" e1( c8) r8 
\times 2/3 { f8 f\noBeam e } \bar "" f4^\ltoe \bar "" f4. g8\noBeam
\bar ""
f8.\prall^\markup { \flat }[( e16]) \bar "" f8([ e16\prall d]~ d4.) r8 \bar "" 
\times 2/3 { c8 d\noBeam e } f[( g]) g2
g8([ aes!]) \times 4/5 { aes!16[( bes! aes g aes] } bes[ aes g aes])
\bar ""
g16\prall([ f8]) r16 \bar "" f8\noBeam g([ a]) \bar "" 
\times 4/5 { a16[( bes! a g f)] } g16[( a]) \bar ""
g\prall[( f]) g8([ f16\prall e] f[ g f e]) d8 d\noBeam~ d2. r4
\bar ""
\times 2/3 { f8 f\noBeam e } f4 \bar "" f2 g8 f16\prall[( e]) f8([ e16\prall d] e2) r4
\bar ""
\times 2/3 { c8 d\noBeam e } f[( g]) g2 \bar "" g8([ aes!)] \bar "" 
\times 4/5 { aes!16[( bes! aes g aes] }
bes[ aes g aes])  \bar ""  g8\prall^\markup { \flat }([ f]~ f\noBeam) r8
\bar ""
f8 g16[( aes!]) \acciaccatura aes!8 \times 2/3 { bes!16[( aes g } f8)] 
g([ s^\ltoe aes!]) g16([ s\rtoe f])
g32[( aes! g f] \times 4/6 { f16[ g f e d c)] } d8\noBeam^\rtoe d~ d2.
 \bar "|."   
}
\addlyrics { "(а)" Йо- ста- на Стан- ка си- ра- че, си- ра- че йот пи- ли- на- че,
на чуз- ди ръ- це бра- то- ви и на по- чуз- ди бу- ли- ни.
Рас- ле е Стан- ка, по- рас- ла, ста- на- ла~й мо- ма въз- рас- на, 
це- ли на двай- си го- ди- не }
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
  opus = "ТД-180,1,20"
  tagline = ##f
}


