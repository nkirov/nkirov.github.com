%{
TD_094_2_22
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 84
%\time 5/16
\cadenzaOn
\acciaccatura g8 a2( \times 2/3 { b16[ a g] } a[ g]) a8
\times 2/3 { a16[( g f] } g16.[ f32] e4.) \breathe
%\par
g8 g16[( a g] \grace { \stdB f8\( \stdE } g8.[\) f16]) e2 r8. %\parenthesize 
\ii d16
\bar ""
e16[( f]) g[( a]~ a4 \times 2/3 { b16[ a g] } a[ g])
g8[( a16 g] \grace { \stdB f8\( \stdE } g8.[\) f16]) e8 e\noBeam~ e2\fermata
 \bar "|." 
s4 \fixB cis
 \bar "|."  
}
\addlyrics { Го- во- ри, Сте- фан Да- "(ай)" мян- ка го- во- ри }
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
		\Score
		tempoWholesPerMinute = #(ly:make-moment 84 4)
		}
	}
}
%
\header{
  opus = "ТД-94,2,22"
  tagline = ##f
}


