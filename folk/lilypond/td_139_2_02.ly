%{
td_139_2_02
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 50
\cadenzaOn
\phrasingSlurDown
a4 \acciaccatura c8 d4.( c16[ b]) 
\afterGrace d8(\( { c16[ b]\) } \afterGrace c4.\( { b16[ c b a]\) } b4.) r8
\acciaccatura c8 d \afterGrace d4.\mordent\( { c16[ b]\) } 
\acciaccatura d8 c16.[( b32 a8]) \afterGrace c8[(\( { \stdB d8\) \stdE } c16 b])
b2~ b8 r
\bar ""
a8 \acciaccatura c \afterGrace d4.\( { c16[ b]\) } 
\afterGrace d8(\( { c16[ d c b]\) } c4. \grace { d16[\( c b a] } \afterGrace b4\)\( { \stdB a8\) \stdE } g8) r 
\acciaccatura c8 d16\noBeam \afterGrace c8.^\rtoe\( { \stdB b8\) \stdE } 
\stemDown
\afterGrace c16[(\( { \stdB b8\) \stdE } \grace { c16[\( b a] } g\) \grace { c16[\( b a] } g8]\)) 
\stemNeutral
a16 a8.\noBeam~ a4 r8
\bar ""
b4 \acciaccatura c8 \afterGrace d4\( { c16[ b]\) } 
\acciaccatura { d[ c b] } c2( \grace { b16[\( c b a] } \afterGrace b4\)\( { \stdB a8\) \stdE } g8) r
\acciaccatura c8 d16\noBeam \afterGrace c8.\prall\( { \stdB b8\) \stdE }
\stemDown 
\afterGrace c8[(\( { b16[ c b a]\) } \afterGrace b16^\rtoe\( { \stdB a8\) \stdE } g16]) 
\stemNeutral
a16\noBeam a8.~ a2
 \bar "|." 
s4 \fixB g
 \bar "|."  
}
\addlyrics { Ма- ри, Ма- рий- ко ма- ми- на, хай- де са ве- ке о- ста- ви
от то- зи въ- ръл хай- дут- лук }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 139 4)
		}
	}
}
%
\header{
  opus = "ТД-139,2,2"
  tagline = ##f
}


