%{
td_140_2_09
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 92
\cadenzaOn
g8([ a]) \afterGrace a1\( { \stdB g8\) \stdE } \afterGrace a4(\( { g16[ f]\) }
g8[ a]~ \afterGrace a2)\( { \stdB g8\) \stdE } \afterGrace a4(\( { g16[ f]\) } g4. a8)
f8.([ ees16] d4)
\bar ""
\acciaccatura f8 g \bar "" g\noBeam~( \times 2/3 { g16[ f ees] } f[ ees\mordent])
\bar "" d2.( c4) r8. \bar "" \acciaccatura f8 g g\noBeam(~ \times 2/3 { g16[ f ees } f8]~ 
f32[ ees d ees d8])
\bar ""
\afterGrace d2\( { \stdB ees8\) \stdE } f4(~ \times 2/3 { f16[ ees d } g8)] 
\times 2/3 { f8[( ees d\prall]) } d8 d\noBeam~ d4 d1
 \bar "|." 
s4 \fixB c
 \bar "|."  
}
\addlyrics { Вен- чал ми бье- ше кум Мар- "ко      (я)" 
не- го- ви де- вет ку- ми- ци }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 92 4)
		}
	}
}
%
\header{
  opus = "ТД-140,2,9"
  tagline = ##f
}


