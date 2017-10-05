%{
% sva_093_1_10
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\cadenzaOn
a8( b) c4 b a4.( g8) c8 b\noBeam a16([ b]) g8\noBeam a8( b) c4 b a4.( g8) 
r4 c8 b\noBeam a b\noBeam a2\fermata
 \bar "|." 
}
\addlyrics { Стой, де- вер- ко, не бий вра- та, стой, де- вер- ко, не бий вра- та, ко }
%
\layout {
   \context { 
	    \Staff \remove "Time_signature_engraver" } 
  indent = #0
  line-width = 190\mm
  ragged-right=##f
}
\midi { 
	\context {
		\Score tempoWholesPerMinute = #(ly:make-moment 110 8)
		}
	}
}
%
\header{
  opus = "ТД-93,1,10"
  tagline = ##f
}


