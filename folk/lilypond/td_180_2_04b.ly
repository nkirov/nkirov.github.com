%{
td_180_2_04b
%}

\include "td-preamble.ly"

\score {
\relative c' {
%%\tempo 4 = 69
\cadenzaOn
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
\addlyrics { Шъ ми- не, от- де шъ ми- не, пу зе- лен ге- рен шъ ми- не,
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
%%  opus = "ТД-180,2,4"
  tagline = ##f
}


