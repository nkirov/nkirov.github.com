%{
td_180_1_05a
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 8 = 120
\cadenzaOn
g8 \acciaccatura g8 a2 a8 a4. a8.\noBeam( g16 a[ g]) 
\acciaccatura g8 \afterGrace a(\( { g16[ f]\) } \afterGrace g4\( { \stdB f8\) \stdE } g16\prall[ f]) r8
\bar ""
f8 g\noBeam g a\noBeam g g4(~ g16[ f] g[ f]) f4(~ f16[ ees] d[ c]) r8 \bar ""
\bar ""
f\noBeam g^\ltoe \acciaccatura g a\noBeam a^\rtoe g4.(~ g16[ f] g[ f]) \bar ""
f8.( \times 2/3 { g16[ f ees!] } d8[ c]) r8
\bar ""
d8 f16([ \afterGrace g]\( { \stdB f8\) \stdE } g16[ f]) f8 \acciaccatura { f16[ ees!] } \bar ""
d8.\noBeam d8 d2( ees!16[ d c8]) r8
\bar ""
f16[( g]) g8^\ltoe g16[( a]) a8^\ltoe g2( a32[ g f16] g\prall[ f] g\prall[ f]) \bar ""
f4.( \times 2/3 { ees!16[ d c)] } r8
\bar ""
d16([ ees!]) f16^\rtoe([ \afterGrace g^\ltoe]\( { \stdB f8\) \stdE } g16^\rtoe[ f^\ltoe]) \bar ""
\acciaccatura f8 g^\ltoe f32[( ees!]) d16 d4. d2
 \bar "|." 
s4 \fixB cis
  \bar "|." 
}
\addlyrics { За- же- ни са Ми- луш, Ми- луш мла- да вай- во- да за мо- ма
кот- лян- ка Дим- ка, ди- ле Дим- ка. И той си ка- ле- са ко- го- то си 
ха- ре- са }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 120 8)
		}
	}
}
%
\header{
  opus = "ТД-180,1,5"
  tagline = ##f
}


