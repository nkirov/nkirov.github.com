%{
td_180_1_05b
%}

\include "td-preamble.ly"

\score {
\relative c' {
%\tempo 4 = 166
\cadenzaOn
\par
\ii \parenthesize d8 g16\noBeam \acciaccatura g8 a16~ a4^\ltoe a8^\ltoe a\noBeam^\ltoe a 
a4.( bes32[ a g^"↑" a] bes![ a g16]) \acciaccatura g8 \afterGrace a(\( { g16[ f]\) }
g32^\rtoe[ a g f] g[ a g f]) r8
\bar ""
f8 g\noBeam^\ltoe g^\ltoe a\noBeam \bar "" g4( a32[ g f] g[ a g f]) \bar ""
a4( \times 4/5 { g32[ f ees d^\rtoe c]) } r8 r
\bar ""
f8 g\noBeam g g16\noBeam a \bar "" a8\noBeam a16[( g]) \bar ""
g8 g4.( a32[ g f g] a[ g f16]) \bar ""
f8.\noBeam( ees!16 d32[ c]) r16^\rtoe
\bar ""
d16[( ees!]) \acciaccatura f8 \afterGrace g(\( { f\) } g16\prall[ f]) f^\ltoe[( g^\rtoe])
\times 2/3 { f[( ees!]) d\noBeam } d2 d\fermata
 \bar "|." 
}
\addlyrics { "(а)" Ко- го- то си ха- ре- са, той тях си ка- ле- са, 
се- стри- ни си- но- ве не ка- ле- са, не- то пък ги ха- ре- са }
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
%%  opus = "ТД-180,1,5"
  tagline = ##f
}


