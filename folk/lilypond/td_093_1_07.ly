%{
sva_093_1_07
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%\tempo 8 = 110
%%\time 2/4
\cadenzaOn
a8( b) c4 b a4.( g8) c8 b\noBeam a g\noBeam a( b) c4 b a4.( g8) r4 a8 
b\noBeam a a\noBeam a2\fermata
 \bar "|." 
}
\addlyrics { За- сев- ки са за- ся- ва- а, за- сев- ки са за- ся- ва- а, ко }
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
  opus = "ТД-93,1,7"
  tagline = ##f
}


