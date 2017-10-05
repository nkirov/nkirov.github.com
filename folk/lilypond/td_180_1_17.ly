%{
td_180_1_17
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 108
\cadenzaOn
g4 g^\ltoe( a2.) a8 a\noBeam a16\prall[( g a bes] a8[ s^\ltoe g]) 
g[( a]~ \afterGrace a2.\( { g16[ f]\) }
\grace { g16[\( a] } g8\)[ f]) r4
\bar ""
a8([ g]) g2( a16[ g f8]) \bar "" g([ a]) \bar "" 
a2(~ a8[ s^\ltoe g]) g[( g16\prall f] g8[\prall f]) \bar ""
g8([ f32 g f e] \afterGrace f2.\( { e16[ f]\) } g16[ f e c]~ c8) r r4
\bar ""
\acciaccatura f8 g4 \afterGrace g2\( { \stdB f8\) \stdE } g([ a]) \bar ""
a2(~ a8[ g]) a[( g16\prall f] g[ a g f]) \bar ""
g8([ f32 g f e] f2 g16[ f e c]) r4
\bar ""
g'4^\ltoe \afterGrace g2\( { a16[ g f\)] } f8([ e^\ltoe]) \bar "" 
g8\prall[( f16 e] f[ g f e^"↓"]) \bar ""
d4 d1( c4) r
\bar ""
f8([ g]) \afterGrace g2^\rtoe\( { a16[ g f\)] } a4 a(~ a8[ g]) \bar ""
a8([ g16\prall f] \times 4/5 { g[ a g f e]) } \bar ""
f16([ \afterGrace g8.\(] { f16[ e\)] } \afterGrace f4\( { \stdB g8\) \stdE } f16[ e c8]) r4^\rtoe
\bar ""
g'8[( f16 e]) f8([ g]~ g4) g8\prall([ s^\ltoe f]) f16^\rtoe([ ees d ees]) d4 d1 
 \bar "|." 
}
\addlyrics { За- же- ни са Мя- луш, Мя- луш, млад вой- во- да за мо- ма кот- лян- ка,
за мо- ма гю- зел- ка, чи ка- ле- сал Мя- луш, ко- и- то ха- ре- сал }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 108 4)
		}
	}
}
%
\header{
  opus = "ТД-180,1,17"
  tagline = ##f
}


