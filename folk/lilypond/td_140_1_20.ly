%{
td_140_1_20
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 136
\cadenzaOn
\acciaccatura b c1(~ c4 d16[ c b8] c\prall[ b] aes16[ g f8]) d'([ c]) c\noBeam( d4.)
d16[( c b c] d[ c b8]) b4 \acciaccatura { aes!16[ g] } f2^\ltoe f8 g\noBeam g1~ g2~ g8 r
\bar ""
d'8([ c]) c4( d) d16([ c b c] d[ c b8]) b4 \bar ""
\varA
\acciaccatura { aes!16\startTextSpan[ g] } f2\stopTextSpan^\ltoe \bar ""
g8. f16\noBeam \acciaccatura { g16[ f e] } f1( g2~ g16[ f e f] g[ f e d] c4^\ltoe) r
\bar ""
d'8[( c]) c4( d~ d16[ c b c] d[ c b8]) b4 \bar "" \acciaccatura { aes!16[ g] } f4 f8 f\noBeam
g4 \bar ""
\varB
s16\startTextSpan f\stopTextSpan( g16[ f e d] c8) r
\bar ""
f16\noBeam \afterGrace g8.\( { f8\) } \acciaccatura { g16[ f e] } f4^\rtoe g8 \bar ""
g\noBeam(~ \afterGrace g^\rtoe\([ { f16[ e]\) } c8]) \bar "" d d\noBeam d1(~ d4 c) r
\bar ""
d'8([ c]) c4( d) d16[( c b c] d[ c b8]) b4 \bar "" \acciaccatura { aes!16[ g] } f8. r16 \bar ""
f4 g \bar "" f\mordent( g16[ f e d] c8) r
\bar ""
\override Glissando #'style = #'zigzag
f8 
\varC
s16\startTextSpan g4.\stopTextSpan^\ltoe 
\acciaccatura { g16[ f e] } f4 \bar "" f8 \noteFi f(\glissando\noBeam e[ d16 c]) \bar "" d8 d\noBeam d1~ d~ d2
 \bar "|." 
s4 \fixB a \fixC
  \bar "|."
\varA
s16\startTextSpan f'4.\stopTextSpan \bar "||"
\varB
\afterGrace f4\startTextSpan\( { e16[ f\stopTextSpan]\) } \bar "||"
\varC
s16\startTextSpan g4\stopTextSpan
\bar "|." 
  
}
\addlyrics { Хей, съ- бра- ли ми са, на- бра- ли кра- лю- ве, о- ще ба- ню- ве,
та се- дя- ха и пи- я- ха, и рой- но ви- но слу- жа- ха
със йед- на ча- ша мир- джан- на и го- лям ка- ул пра- вя- ха }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 136 4)
		}
	}
}
%
\header{
  opus = "ТД-140,1,20"
  tagline = ##f
}


