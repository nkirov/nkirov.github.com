%{
td_180_2_04a
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 69
\cadenzaOn
f8[( g]~ g4^\ltoe) a a8.(\noBeam g16) a g\noBeam( a8~ a2.~ a8[ g32 a g f] g2~ g8)
f16[( g]) a8[( g16 f])
\bar ""
f16[( \afterGrace g]\( { \stdB f8\) \stdE } g~ \afterGrace g2.\( { \stdB f8\) \stdE } \bar ""
\grace { g16[\( f e] } f2\)~ \bar "" f8[ ees32 d c16]) \bar "" r4^\ltoe \bar "" 
f g a8[( g16 f]) f8 \bar ""
g32[( a g f] g2.
\bar ""
\grace { f32[\( g f e] } f4\)~ f8[ \times 2/3 { ees16 d c]) } \bar ""
d16 d\noBeam
d8(~ d2. c8) r \bar "" f4 g \bar "" a8[( g16 f])
\bar ""
g8 f16[( g]~ g2. \grace { f32[\( g f e] } f2\) ees!16[ d c]) r16 \bar ""
d^\ltoe d\noBeam^\rtoe d8~ d1\fermata
 \bar "|."
\break
\acciaccatura f8 g2 a4 a8.\noBeam( g16) g[( a]) 
a8\noBeam( \grace { \stdB g\( \stdE } a2.\)~ a8[ g32 a g f] g2. f4) g16\noBeam
\afterGrace a8.^\rtoe\( { g16[ f]\) }
\bar ""
f16[( \afterGrace g]\( { \stdB f8\) \stdE } g~ g2. \bar ""
\grace { f32[\( g f e] } f2\)~ 
f8 \times 2/3 { ees16 d c]) } r4 \bar ""
f g a8[( g16 f]) \acciaccatura f8 g\noBeam \bar ""
g16.[( f32] g2.
\bar ""
\grace { f32[\( g f e] } f4\)~ f8[ \times 2/3 { ees!16 d c]) } \bar ""
d16 d\noBeam~ d8~ d2. c8 r \bar "" f4 g a8[( g16 f]) f8\noBeam \bar ""
\afterGrace g(\( { \stdB f\) \stdE } g2.
\bar ""
\grace { f32[\( g f e] } f2\) ees!16[ d c]) r d^\ltoe d\noBeam^\rtoe d8~ d1\fermata
 \bar "|." 
s4 \fixB c
 \bar "|."  
}
\addlyrics { Ра- да за во- да о- ти- ва със бе- ли мед- ни ба- къ- ри, 
със по- зла- те- на ко- бил'- ца 
 Шъ ми- не, от- де шъ ми- не, по зе- лен ге- рен шъ ми- не,
хо- ди- ла и са~й вър- на- ла }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 69 4)
		}
	}
}
%
\header{
  opus = "ТД-180,2,4"
  tagline = ##f
}


