%{
td_140_1_18
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 104
\cadenzaOn
\phrasingSlurDown
\override Glissando #'style = #'zigzag
e4^\rtoe \acciaccatura g8 a4 \acciaccatura { b16[ a g] } 
a1(~ a4 \afterGrace b\( { a16[ g]\) } a16[ g8.]) a8 
a\noBeam( g16\prall[ fis g8]~ \afterGrace g[\( { f16[ e]\) } d8]) g4 a8
a\noBeam( g1\mordent^\markup { \sharp }~ g4 \afterGrace a2\( { g16[ f^"↑"]\) } 
\afterGrace g4^\prall\( { f!16[ e]\) } d8) r
\bar ""
a'4 a\mordent( \grace { \stdB a8\( \stdE } g4\)) g8[( a^\rtoe]) a[( g]) 
\afterGrace a4(\( { g16[ f]\) } \afterGrace g4\prall\( { f16[ e]\) } d4)
e8. e16\noBeam e1(~ e4 d8) r
\bar ""
e8[( f]) g2 a4 g8 a\noBeam( \afterGrace g4\mordent\( { \stdB a8\) \stdE } 
\parS
\noteFi \afterGrace g-\parenthesize\prall[\glissando { f16[ \noteFi e]\glissando } d8]) 
e8^\ltoe e\noBeam^\ltoe e1~ e
 \bar "|." 
s4 \fixB d
 \bar "|."  
}
\addlyrics { Из мо- ре плу- йе ге- мий- ка и във ге- мий- ка млад Сто- ян,
млад Сто- ян "с ка-" вал сви- ре- ше }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 104 4)
		}
	}
}
%
\header{
  opus = "ТД-140,1,18"
  tagline = ##f
}


