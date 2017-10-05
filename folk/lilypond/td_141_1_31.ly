%{
td_141_1_31
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%%\tempo 4 = 100
\cadenzaOn
g16[( a8.]) a4 g g16[( a8.]) a1(~ a8.[ g16] f4) g16[( a8.]) bes16[( a g8])
g1~ g2. r4 r
\bar ""
\parG
\ii \parenthesize c,8\noBeam
g'4^\rtoe a8[( g]) \bar "" g\prall[( f]) \bar "" 
g g\noBeam(~ g2 a16[ g f8]) \bar "" g4 \bar "" g8\prall[( f]) \bar ""
f1(~ f8[ ees16 d] c1~ c4) r
\bar ""
d8[( e]) \bar "" f16[( g8.]~ g2 a8[ g]) \bar ""
\acciaccatura { a16[ g] } f4( \afterGrace g\( { a16[ g f]\) } f8[ e]) d[( e]) f2.
\bar ""
f16[( g f e] \afterGrace f8[\( { \stdB e\) \stdE } d]~ d2) d8 d\noBeam~ d1~ d2
 \bar "|." 
s4 \fixB a
  \bar "|." 
}
\addlyrics { Сил- но стра- же- нье ста- на- ло "(и)" на Би- тол- ско рав- но по- ле,
из Би- тол- ски- те шо- се- та }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 100 4)
		}
	}
}
%
\header{
  opus = "ТД-141,1,31"
  tagline = ##f
}


