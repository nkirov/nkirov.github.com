%{
td_121_2_16
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 66
\cadenzaOn
\phrasingSlurDown
c16\noBeam \afterGrace c8.\( { \stdB b8\) \stdE } b4..~ b16 b[( c] d8~ \afterGrace d4)\( { e16[ d c b c]\) }
c16[( b] a8\noBeam \grace { b16[\( a] } g2.\)) \breathe a16[( b]) c8\noBeam( \grace { d16[\( c] } b8\))
b8\noBeam~ b2 r4
\bar ""
\times 2/3 { d8\noBeam c b\noBeam } a2 bes16[( a] 
\grace { g16[\( fis] } \afterGrace g4\)\( { \stdB a8\) \stdE }
\times 2/3 { g16[ fis! ees]) } d8 d\noBeam~ d4 d4. r8 c8 d16[( ees!])
\bar ""
\acciaccatura { f16[ g] } f8( \grace { ees!16[\( d] } ees4\))  f16[( g] a4) 
bes!16[( a] \grace { g16[\( fis!] } \afterGrace g4\)\( { \stdB a8\) \stdE } 
\times 2/3 { g16[ fis! ees!]) } d8
d\noBeam~ d4 \breathe d2
 \bar "|." 
s4 \fixB gis,
  \bar "|." 
}
\addlyrics { Ле- жал ми~йе Сто- ян, бо- лял ми це- ли ми де- вет го- ди- ни,
на ди- се- та- та го- ди- на }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 66 4)
		}
	}
}
%
\header{
  opus = "ТД-121,2,16"
  tagline = ##f
}


