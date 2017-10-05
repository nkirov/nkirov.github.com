%{
td_094_1_22
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 60
\cadenzaOn
\phrasingSlurDown
\acciaccatura c8 d16\noBeam \afterGrace d8.\( { c16[ b]\) } b4 b32[( c])
\afterGrace d8.\noBeam(\( { e16[ d]\) } e8) d\noBeam 
\afterGrace c8\noBeam(\( { d16[ c]\) } \afterGrace b8\noBeam)\( { c16[ b a]\) }
b2\fermata \breathe \iii f8\noBeam
\bar ""
b32[( c]) \afterGrace d8\noBeam\( { \stdB b\) \stdE } \afterGrace d8\noBeam(\( { c16[ b]\) }
\grace { c16[\( b] } a8\noBeam\)~ a4 b16[ a] g8\noBeam) \breathe
\acciaccatura b8 c16\noBeam c8.\noBeam( \grace { d16\([ c] } b8)\)\noBeam 
c16 a\noBeam a2\fermata \breathe  \iii f8\noBeam
\bar ""
b4 \acciaccatura c8 \afterGrace d4\( { \stdB e8\) \stdE } c16\noBeam( b~ b4.) c16 
d\noBeam( \afterGrace e8\( { \stdB d\) \stdE } c8\noBeam) b16 a\noBeam a2\fermata
 \bar "|." 
s4 \fixB e
 \bar "|."  
}
\addlyrics { Стай- ко на Стан- ка ду- ма- ше: и Зна- еш ли, Стан- ке, пом- ниш ли, и
ко- га- то бяй- ме мъ- нич- ки }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 60 4)
		}
	}
}
%
\header{
  opus = "ТД-94,1,22"
  tagline = ##f
}


