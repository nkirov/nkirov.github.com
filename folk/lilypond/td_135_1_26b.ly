%{
td_135_1_26b
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%\tempo 4 = 168
\time 2/4
\parS
c4 d8[( c]) | b[( c b-\parenthesize\prall g]) | a4 a 
\bar ":|" 
c8[( bes]) c4 | c8[( b!16 c b8 a)] | c4 bes | bes8[( a]) a[( g]) |
g2 | g4 g
 \bar "|." 
}
\addlyrics { па- вун я па- се, пир- ца му па- дат, пир- ца му па- дат }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 168 4)
		}
	}
}
%
\header{
%%  opus = "ТД-135,1,26"
  tagline = ##f
}


