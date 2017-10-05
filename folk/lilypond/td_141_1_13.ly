%{
sva_141_1_13
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%%\tempo 4 = 152
\time 2/4
%%\cadenzaOn
\override Glissando #'style = #'zigzag
a4 c8([ b]) | a4( g) | \acciaccatura b8 c4 c8([ b]) | a[( g]) a4 | g2 \breathe |
a4 a | a2 | g4 a | g a | a2~ a\fermata | 
\set Score.measureLength = #(ly:make-moment 3 4)
\noteFi e'2\glissando \hideNotes c4 \unHideNotes
\set Score.measureLength = #(ly:make-moment 2 4)
\bar "|."
 s4 \fixB e,
 \bar "|."  
}
\addlyrics { Де са йе чу- ло- ви- дя- ло сряд ля- то бял сняг да ле- ти, и }
%
\layout {
%%   \context { 
%%	    \Staff \remove "Time_signature_engraver" } 
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
  opus = "ТД-141,1,13"
  tagline = ##f
}


