%{
sva_097_1_01
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 126
%%\time 2/4
\cadenzaOn
\override Glissando #'style = #'zigzag
\phrasingSlurDown
f4 g1 g8( aes) \afterGrace b2.(\( { \stdB c8\) \stdE } d8[ c16 b]) 
c8([ b] aes!16[ g \afterGrace aes8]\( { \stdB b8\) \stdE } aes8[ g]) g1. r4 r 
 \bar ""
d'8([ c]) \acciaccatura { d16[ c b] } \afterGrace c2.\( { \stdB b8\) \stdE } 
\noteFi b8\glissando([ aes!]) aes!16[( b a g] f2) 
 \acciaccatura { g16[ aes!] } \afterGrace b1\( { a16[ g]\) } 
 \times 2/3 { f8[( e f] } \times 2/3 { g8[ f e] } f1.) r4 r
 \bar ""
 f4 g2. g8([ aes!]) b!2.( \times 2/3 { d8[ c b] } 
 \afterGrace c2)\( { \stdB b8\) \stdE } 
 \times 2/3 { aes!8([ g a] } \times 2/3 { b[ aes! g]) } g1~ g4 r r
 \bar ""
 d'8[(\glissando c]) c16([ d c b] \afterGrace c2.)\( { \stdB  b8\) \stdE } 
 b8([ aes!]) aes!16[( b a g] f8.[ g16]) g1 g1\fermata
\bar "|." 
s4 \fixB c,
\bar "|." 
}
\addlyrics { У мо- мя- ни дво- ри тъм- на мъ- гла па- да, 
у мом- ко- ви дво- ри яс- но слън- ци гре- и }
%
\layout {
   \context { \Staff \remove "Time_signature_engraver" } 
  indent = #0
  line-width = 190\mm
  ragged-right=##f
}
%
\midi { 
	\context {
		\Score
		tempoWholesPerMinute = #(ly:make-moment 126 4)
		}
	}
}
%
\header{
  opus = "ТД-97,1,1"
  tagline = ##f
}


