%{
td_139_2_13
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 92
\cadenzaOn
g8[( a]) a g\noBeam b16[( a8.]) a2.( b16[ a g8^\ltoe]) b[( a]) 
\afterGrace a^\rtoe[(\( { \stdB b\) \stdE } a16 g]) \afterGrace g8^\rtoe[(\( { \stdB a\) \stdE } g16 f]) 
e8.[( f16]) g8 f\noBeam
\bar ""
f16[( e]) e8\noBeam~ \afterGrace e2.\( { \stdB f8\) \stdE } \bar ""
g\noBeam \bar "" f( \grace { g16[\( f] } e4\)) \bar "" d2. r4 
g8^"↑"[( a]) b[( a]) \acciaccatura { b16[ a g^"↑"] } \afterGrace a1(\( { gis16[ a]\) }
b[ a gis! a] \grace { b[\( a gis!] } f4^\rtoe\))
gis!16[( a]) a8\mordent( gis![ f]) f16[( gis!8^\rtoe f16]) e8 e\noBeam~ e1~ e4
 \bar "|." 
s4 \fixB d
 \bar "|."  
}
\addlyrics { Тей- но- ва бул- ка, Гроз- да- но, мо- жеш ли да ми о- же- ниш ни- ва- та де- вет де- ка- ра }
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
  opus = "ТД-139,2,13"
  tagline = ##f
}


