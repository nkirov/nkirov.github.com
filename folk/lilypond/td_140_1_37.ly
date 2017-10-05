%{
td_140_1_37
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 120
\cadenzaOn
e2 \acciaccatura g8 a4 a16[( b a gis] a2.~ \afterGrace a1\( { b16[ a g]\) } 
a8\prall g4.) \acciaccatura g8 \afterGrace a2.\( { \stdB g8\) \stdE } 
g16[( a g fis] g8.[ f16] e8[ d])
\bar ""
e16([ f]) \bar "" g8~ g1 \bar "" 
g16[( a g fis!] g1 \bar "" a8[ g16 fis] g8.[ f16] e8[ d]) r4 \bar "" r8
\ii d e[( f]) g1~ g4
\bar ""
\acciaccatura g8 \afterGrace a2.(\( { \stdB g8\) \stdE } a8\prall[ g]) \bar "" 
g[( a]) \bar ""
a[( g16 fis] g8.[ f16] e4^\ltoe) \bar "" e8 \bar "" e\noBeam~ e1~ e4 \bar "" e1~( e4 d8) r8 r4 \bar ""
\ii d4 \bar "" e8.([ f16])
\bar ""
g1~ g2 \bar "" g8([ a]) a^\rtoe([ g]) g16([ a g fis!^"↓"] g8.[ f16] e4^\ltoe) e8 e\noBeam~ e1 e~e2 
 \bar "|." 
s4 \fixB cis
  \bar "|." 
}
\addlyrics { Йо- ста- на Ван- кя си- ра- че, и без май- ка Ван- кя, 
без тяй- но, и чи са май- ка хи о- же- ни }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 120 4)
		}
	}
}
%
\header{
  opus = "ТД-140,1,37"
  tagline = ##f
}


