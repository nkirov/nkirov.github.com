%{
td_113_1_17
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 8 = 160
\cadenzaOn
a8 \acciaccatura a b2( \grace { c16[\( b] } a8\)) a2.( b16\prall[ a] g1) 
r8 \acciaccatura a8 b16\noBeam b( \grace { a16[\( b a g] } a2\) b16\prall[ a])
a8 g2~ g8 r
\bar ""
a16[( b] \grace { a16[\( b a g] } a4.\) \grace { b16[\( a] } g8\)) \bar ""
\acciaccatura g8 a\noBeam \times 2/3 { g16[( a g } f e]) e1 r8
\acciaccatura a8 b16 b\noBeam( \grace { a16[\( b a g] } a2\) \grace { b16[\( a] } g8\))
\bar ""
a16([ \grace { g16[\( a g fis] } \afterGrace g8.]\)\( { \stdB a8\) \stdE } \times 2/3 { g16[ f e]) }
e8\noBeam^\ltoe e2.\fermata
 \bar "|." 
s4 \fixB fis
  \bar "|." 
}
\addlyrics { Я чу- вай, ма- мо, я чу- вай, де пе- и Не- да "в го-" рен край }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 160 8)
		}
	}
}
%
\header{
  opus = "ТД-113,1,17"
  tagline = ##f
}


