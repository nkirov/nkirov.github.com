%{
sva_141_1_10
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%\tempo 4 = 112
\time 2/4
%\cadenzaOn
a4 a | a \acciaccatura c8 d4 | c4.\trill( b8) | c4 b\prall | b8( a4.) | a8([ b]) c4 |
c8([ b]) b\prall[( a]) | a2^\rtoe | a16[( b8.]) a4 | a2
 \bar "|." 
s4 \fixB d,
  \bar "|." 
}
\addlyrics { Доб- ра е змей- ка лю- би- ла, май- ци си ни йе ка- за- ла }
%
\layout {
%   \context { 
%	    \Staff \remove "Time_signature_engraver" } 
  indent = #0
  line-width = 190\mm
  ragged-right=##f
}
%
\midi { 
	\context {
		\Score tempoWholesPerMinute = #(ly:make-moment 112 4)
		}
	}
}
%
\header{
  opus = "ТД-141,1,10"
  tagline = ##f
}


