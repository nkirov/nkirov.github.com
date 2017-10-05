%{
sva_094_2_07
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 8 = 110
\cadenzaOn
\phrasingSlurDown
\times 2/3 { a16[( b c]) } b4( c16[ \grace { c16[\( b] } a]\))
\acciaccatura b8 a16\noBeam b32[( c]) \acciaccatura { c16[ b] } a8
b8\noBeam^\ltoe c16\noBeam b8.( \grace { c16[\( b a g] } a2\)) \breathe
\acciaccatura b8 c b4\prall( a32[ b c16]) b16\noBeam b16~ b4.
 \bar "|." 
 s4 \fixB e,
 \bar "|."  
}
\addlyrics { Ра- до- вай се, ма- ле, ра- до- вай се, ма- ле }
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
  opus = "ТД-94,2,7"
  tagline = ##f
}


