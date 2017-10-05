%{
td_181_2_13
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 116
\cadenzaOn
\parG
\ii \parenthesize c8 d2. f8 g\noBeam g([ f16 g]~ g2 f16[ g f e] f[g f e])
\afterGrace e2\( { f32[ e d]\) } e8([ f])  g[( s^\ltoe a]) 
\afterGrace a4\(( { g32[ a g f]\) }  g1) r4
\bar ""
g8([ a] b4 \grace { a32\([ b a g] } a4\) b16[ a g8] \grace { f32[\( g f e] } f4\)) 
\bar ""
g8\noBeam a 
a8^\ltoe([ g^\rtoe] \grace { f32[\( g f e] } f4.\) g16[ f]) a8([ g~] g16[ a g f])
e4 e1 e2.( d8) r
\bar ""
\ii \parenthesize d16 f2. f8 g\noBeam 
\afterGrace g4(\( { f32[ g f e]\) } \afterGrace f2\( { e32[ f e d]\) } e4) r8 c\noBeam
d16([ e] \afterGrace f4.)\( { g16[ f e]\) } d8([ s^\ltoe e]) d1 d2.
 \bar "|." 
s4 \fixB ees
 \bar "|." 
}
\addlyrics { "(и)" До- бре ми до- шъл, дра- гин- ко, бу- ля да ти се о- пла- че:
"(а)" сно- щи се въ- ър- на ба- тю ти }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 116 4)
		}
	}
}
%
\header{
  opus = "ТД-181,2,13"
  tagline = ##f
}


