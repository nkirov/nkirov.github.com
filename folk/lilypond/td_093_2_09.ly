%{
sva_093_2_09
%}

\include "td-preamble.ly"

\score {
\relative c' {
%%\tempo 8 = 110
%%\time 2/4
\cadenzaOn
f4 g8 g16([ f32 e]) f8.([ \times 2/3 { e32 d e]) }  d8.([ \times 2/3 { e32 d c]) }
d8\noBeam e f4( \times 2/3 { e32[ d e } c8~] c4) \bar ""
\break
f8.\noBeam( g16) a16[( g]) g8\noBeam
f8.\noBeam( e16) d8.\noBeam( f16) e8 d\noBeam d2\fermata
 \bar "|." 
s8 \fixB d
  \bar "|." 
}
\addlyrics { Про- ща- вай, ма- мо, про- ща- вай, до си- га бех- ме за- ид- но }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 110 8)
		}
	}
}
%
\header{
  opus = "ТД-93,2,9"
  tagline = ##f
}


