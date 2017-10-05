%{
TD_095_1_06
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 16 = 336
%  \time 11/16
\cadenzaOn
  a8\noBeam d8 c16\prall([ b]) c32([ b] \grace { c16[\( b] } a8.\)) \bar ""
  c8 c16\prall([ b]) a8.\noBeam g8 r8 \bar ""
  c8 c16([ d]) e16([ c]) \acciaccatura { c16[ d c] } 
  b8( \grace { c16[\( b]} 
\override Glissando #'style = #'zigzag     
 \noteFi \afterGrace a4\)\(\glissando { \stdB c8\)) \stdE } \bar "" 
  bes16 a8.\noBeam a8. a4\fermata
 \bar "|." 
}
\addlyrics { Ма- ма Ви- до- лу ду- ма- ше: Син- ко Ви- до- ле, Ви- до- ле }
%
\layout {
  indent = #0
  line-width = 190\mm
  ragged-right=##f
   \context { \Staff \remove "Time_signature_engraver" } 
}
%
\midi { 
	\context {
		\Score
		tempoWholesPerMinute = #(ly:make-moment 152 4)
		}
	}
}
%
\header{
  opus = "ТД-95,1,6"
  tagline = ##f
}


