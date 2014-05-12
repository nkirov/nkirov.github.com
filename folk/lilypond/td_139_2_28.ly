%{
sva_139_2_28
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 120
\time 2/4
%\cadenzaOn
b4 c | b8.([ c16] b8[ g]) | a2 | b4 c |  b8.([ c16] b8[ g]) | a2 | b4 c | 
\parS
 b8.([ c16] b8[ g]) | a2-\parenthesize^\rtoe | b4 b8([ a]) | \acciaccatura a8 b2 | b
 \bar "|." 
 s4 \fixB f
 \bar "|."  
}
\addlyrics { Люл- ки, вей- ки, по- лю- лей- ки, тва кой се- ди на люл- ки- те }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 120 4)
		}
	}
}
%
\header{
  opus = "ТД-139,2,28"
  tagline = ##f
}


