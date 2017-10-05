%{
td_180_1_06
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 84
\cadenzaOn
\override Glissando #'style = #'zigzag
\parG
\ii \parenthesize b8 g'4^\rtoe\glissando \noteF f16[(\glissando \noteFi ees\glissando d8]) 
d4^\rtoe d8^\ltoe([ ees!^\rtoe]) 
\acciaccatura f8 \afterGrace g2.(\( { \stdB f8\) \stdE } g16\prall[ f]) r8 f g\noBeam
f8^\ltoe([ g^\rtoe]~ \afterGrace g4\( { f16[ ees!\)] } 
\bar ""
f16[ g f ees!^"↑"] \grace { f32[\( g f ees^"↑"] } c4)\) \bar ""
r^\ltoe d8([ e]) \afterGrace f4(\( { \stdB e!8\) \stdE } f16[ e! d8]) d2~ d8 r g \bar ""
f16([ g~] \afterGrace g4\( { f16[ ees]\) }
\bar ""
\afterGrace f8\noBeam\prall\( { \stdB ees!\) \stdE } f32[ ees! d16]) d8 d\noBeam^\ltoe
d2.( c8) r \bar ""
d8([ e)] f2( g32[ f e!16] f32[ e^"↓" d16^\rtoe]) d4. r8
\bar ""
g8^\rtoe f\noBeam^\ltoe( \afterGrace g2\( { f16[ ees^"↑"\)] } f16[ g f ees!^"↑"]) 
d8. d16\noBeam d1
 \bar "|." 
s4 \fixB d
  \bar "|." 
}
\addlyrics { "(ъ)" Слън- ци- то треп- тя, за- хож- да, И- ван- ка 
за в'да йо- ти- ва със бе- ли мед- ни ба- къ- ря }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 84 4)
		}
	}
}
%
\header{
  opus = "ТД-180,1,6"
  tagline = ##f
}


