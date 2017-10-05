%{
td_095_2_23
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 8 = 168
\cadenzaOn
\phrasingSlurDown
a8 a2 b8^\rtoe c2. \acciaccatura c8 d(\noBeam c16\prall[ b32 c] d8\noBeam) c
b16([ c] b[\prall a]~ a4) a1 r4
\bar ""
a16[( b]) \afterGrace c4(\( { d16[ c]\) } b[ c d8]) c\noBeam 
b16[( c] \grace { d16[\( c] } b8[\) a]) 
\afterGrace a4.\(( { \stdB b8\) \stdE } c\noBeam)
\acciaccatura { c16[ b a] } b8 a2^\ltoe a1
 \bar "|." 
s4 \fixB e
 \bar "|."  
}
\addlyrics { Ка- чи се Сто- ян на йе- ла йе- ла- ви ур- ки да си- че  }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 168 8)
		}
	}
}
%
\header{
  opus = "ТД-95,2,23"
  tagline = ##f
}


