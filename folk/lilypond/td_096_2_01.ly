%{
TD_096_2_01
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 58
%\time 5/16
\cadenzaOn
g8.[( a16]) \acciaccatura a8 a8.[( \times 2/3 { a32 g fis]) }
\afterGrace g8[(\( { a\) } g32 f e16]) e e8.\noBeam^\rtoe 
\acciaccatura { e16[ f] } g8[( a])
\bar ""
g16\prall[( f]) f8(~ \afterGrace f2\( { g16[ f]\) } e16.[ f32 g8])
\acciaccatura f8 g[( \grace { f16[\( g f] } e8]\)) e4 e2.
 \bar "|." 
s4 \fixB c
 \bar "|."  
}
\addlyrics { Сто- йе- не, вя- ру- ваш ли си бул- че- то }
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
		\Score
		tempoWholesPerMinute = #(ly:make-moment 58 4)
		}
	}
}
%
\header{
  opus = "ТД-96,2,1"
  tagline = ##f
}


