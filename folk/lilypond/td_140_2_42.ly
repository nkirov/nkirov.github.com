%{
sva_140_2_42
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 120
%\time 2/4
\cadenzaOn
a4 c2 c8 c16[( b] c[ b g8^\rtoe]) a4 \acciaccatura a8 b4( a) 
b^\ltoe a2^\rtoe b4 a( g) a\prall a2.
 \bar "|." 
 s4 \fixB g
  \bar "|."
}
\addlyrics { Как са мо- ре де- ли на "с двя," на "с три" стра- ни }
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
  opus = "ТД-140,2,42"
  tagline = ##f
}


