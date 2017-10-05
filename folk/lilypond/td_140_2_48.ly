%{
td_140_2_48
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 88
\cadenzaOn
\parS
a8[( g]) a[( b]) \acciaccatura { b16[ a g] } \afterGrace a1(\( { b16[ a g\)] } a8[ g])
a-\parenthesize^\rtoe g\noBeam( a8.^\rtoe[ g16]) \acciaccatura a8 g16[( f]) 
\varA
e8.\startTextSpan[(\prall d16\stopTextSpan])
\bar ""
d2~ d8 r \bar "" \acciaccatura g8 a8.[( g16]) g8[( a]) \bar "" 
a2.( \times 2/3 { b16[ a g] } a32[ g16.^\rtoe])
a8 g[( a g])
g16[( f^"↑"]) e8~ e2~ e8 r e8 e\noBeam~ e2.
 \bar "|." 
s4 \fixB f \fixC
  \bar "|." 
 s16 \clef treble
 \varA
e4\startTextSpan(\prall d8\stopTextSpan)
 \bar "|."   
}
\addlyrics { Сли- за- ло мом- че гор- ньен- че от- го- ре, от пла- ни- на- а- та }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 88 4)
		}
	}
}
%
\header{
  opus = "ТД-140,2,48"
  tagline = ##f
}


