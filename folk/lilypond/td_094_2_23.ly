%{
td_094_2_23
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 8 = 152
\cadenzaOn
\override Glissando #'style = #'zigzag
\phrasingSlurDown
e4 \acciaccatura g8 a a\noBeam b \times 2/3 { b16[( a g] } a16\noBeam) g a8\noBeam
a16[( g]) \times 2/3 { a[( g e]) } \breathe e8 g\noBeam a a16\noBeam( g8) f16\noBeam
\bar ""
e8 e4\fermata r8 g g16\noBeam g g8\noBeam g8. f8\noBeam a8. a8\noBeam( g8.) \breathe
g8\noBeam \noteFi \grace { \stdB g8\glissando \stdE } b[ b16]
\bar ""
b16[( a]) a[( g a g]) g8 a\noBeam g16[( f]) r8 e e\noBeam g16 g\noBeam g4 a8\noBeam 
\times 2/3 { a16[( g f]) } e4\fermata r8
\bar ""
g8 b\noBeam \times 2/3 { b16[( a g] } a16.[ g32] \times 2/3 { a16[ g f] } g16.[ f32] e4)
a8\noBeam a16[( g]) g8\noBeam( \times 2/3 { a16[ g f] } g16\prall[ f32]) 
e16\noBeam e~ e4\fermata
 \bar "|." 
s4 \fixB b 
 \bar "|."  
}
\addlyrics { Слу- шай- те, май- ки и ба- щи, вий, мо- ми~й, вий, ни- вес- ти,
по- мал- ки бра- тя и сес- три, за на- шти храб- ри ги- ро- и как са О- дри- на
при- взе- ле, О- дри- на гра- да го- ля- ма }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 152 8)
		}
	}
}
%
\header{
  opus = "ТД-94,2,23"
  tagline = ##f
}


