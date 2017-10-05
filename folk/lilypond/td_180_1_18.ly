%{
td_180_1_18
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 126
\cadenzaOn
d8 d\noBeam a'( g32[ a g f] g8 a\noBeam~ a2.) r4 \acciaccatura bes8 c a\noBeam
\afterGrace a2\( { bes!16[ a g\)] } g8([ a]) a2 a16([ g])
\bar ""
g32[( a g f] \afterGrace g2\( { a16[ g f]\)) } f8([ \times 2/3 { g16 f e] } c8) r \bar ""
d2 f8([ g])  \afterGrace g2\( { a16[ g f]\) } \bar "" 
g8([ a]) a2 a16[( g])
\bar ""
\acciaccatura { a16[ g f] } \afterGrace g4.\( { \stdB f8\) \stdE } \bar ""
f16[( g f e] d8[ c]) r4 \bar ""
d8 g\noBeam g4.( f8) g([ f]) f16[( g f e] d8[ c])
\bar ""
d8 d\noBeam~ d2 \bar ""
\afterGrace d2\( { e16[ d c]\) } r4 \bar "" a'8([ s^\ltoe g]) g \bar ""
g\noBeam~ \afterGrace g2\( { a16[ g f]\) } g8([ a]) a2 a8([ s^\ltoe g])
\bar ""
\acciaccatura { a16[ g f] } g4.( \times 2/3 { a16[ g f]) } \bar ""
f8([ \times 2/3 { g16 f e] } d[ c]) r8 f g16[( a]) \bar ""
a2( bes!32[ a g f] g[ a g f]) \breathe \bar ""
g16([ a]) f8 f8.([ ees16]) d8 d\noBeam~ d2.
 \bar "|."
\break
d8^"II" d\noBeam a'( g32[ a g f] g8 a\noBeam~ a2.) r4 \acciaccatura bes8 c a\noBeam
\afterGrace a2\( { bes!16[ a g\)] } g8([ a]) a2 a16([ g])
\bar ""
g32[( a g f] \afterGrace g2\( { a16[ g f]\)) } f8([ \times 2/3 { g16 f e] } c8) r \bar ""
\afterGrace d2\( { \stdB c8\) \stdE } f8([ g])  \afterGrace g2\( { a16[ g f]\) } \bar "" 
g8([ a]) a2 a16[( g])
\bar ""
\acciaccatura { a16[ g f] } \afterGrace g4.\( { \stdB f8\) \stdE } \bar ""
\afterGrace f8[(\( { \stdB g8\) \stdE } f16 e] c8\noBeam) r^\rtoe \bar ""
f8\noBeam g16[( a]) a2(~ a8[ g16 f] g[ a g f]) g[( a]) f8\noBeam
\bar ""
\afterGrace f8[(\( { \stdB g8\) \stdE } f16 ees!]) d8\noBeam d~ \afterGrace d2\( { ees!16[ d c]\) } r4
d8 g\noBeam g4.( \times 2/3 { a16[ g f)] } g8[( a]) \afterGrace a2\( { bes!16[ a g]\) }
\bar ""
g8\noBeam \afterGrace a\noBeam(\( { g16[ f]\) } g[ a g f]) f[( g f ees] d8[ c]) r4 
f8\noBeam g16[( a]) a2( bes!32[ a g f] g[ a g f])
g16[( a]) f8\noBeam g16[( g f ees!]) d8\noBeam d~ d2.
 \bar "|."  
}
\addlyrics { Мо- ри, хей! Ди- мо ма- ми си ду- ма- ше: Мор, ма- мо,
мор, ми- ла ма- мо, мор, из- ляз, ма- мо, на- вън- ка, на- вън- ка, 
вън на вра- та- та, по- гле- дай до- лу~й на- го- ря, 
 мо- ри, хей, по- гле- дай до- лу~й на- го- ря към ти- ха бя- ла Ду- на- ва,
как- во са ле- и- би- ле- и! Шъ и- да, ма- мо, да ви- да: а- ко са ко- не хра- не- ни }
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
  opus = "ТД-180,1,18"
  tagline = ##f
}


