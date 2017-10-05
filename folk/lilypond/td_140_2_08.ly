%{
td_140_2_08
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 92
\cadenzaOn
g8([ a]) \afterGrace a1\( { \stdB g8\) \stdE } \afterGrace a4\( { g16[ f]\) } g8(\noBeam f~ 
\afterGrace f2)\( { \stdB g8\) \stdE } \afterGrace a4(\( { g16[ f]\) } g4.^\ltoe a8) \bar ""
\afterGrace f8[\(( { \stdB ees8\) \stdE } d]~ d4) \bar "" \acciaccatura f8 g
\bar ""
g8\noBeam(~ \times 2/3 { g16[ f ees] } f16.[ ees32]) \bar "" d2.( c4) r4 \bar "" \acciaccatura f8 g \bar ""
g8\noBeam(~ \times 2/3 { g16[ f ees } f8]~ f32[ ees d ees d8]) \bar "" \afterGrace d2\( { \stdB ees8\) \stdE }
\bar ""
f4~( \times 2/3 { f16[ ees d } g8]) \bar "" \times 2/3 { f8[( ees d]) } \bar "" d8 d\noBeam~ d4 d1
 \bar "|." 
s4 \fixB b
 \bar "|."  
}
\addlyrics { Тръг- на- ла йе вак- ла Гюр- га- "на       (я)" 
на ло- зя, на рос- но гроз- де }
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
  opus = "ТД-140,2,8"
  tagline = ##f
}


