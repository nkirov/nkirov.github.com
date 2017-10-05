%{
sva_141_2_07
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%\tempo 4 = 120
%\time 2/4
\cadenzaOn
d8\noBeam c~ c4. b16[( d]) c8([ b]) c^\rtoe([ b]) a4 a( g) r 
\acciaccatura b8 c8.([ b16]) c8 a4 a8([ g]) r4 c8\noBeam a8\noBeam(~ a[ g])
g8 a\noBeam~( a[ c16 bes]) a1
 \bar "|." 
 s16 \fixB c,4
 \bar "|."  
}
\addlyrics { Про- ща- вай, ма- ле, про- ща- вай, 
про- ща- вай, прош- ка ми да- вай }
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
  opus = "ТД-141,2,7"
  tagline = ##f
}


