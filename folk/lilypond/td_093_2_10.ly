%{
sva_093_2_10
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%%\tempo 8 = 110
%%\time 2/4
\cadenzaOn
a4 a2( b16[ a g8]) b4 b a8([ g)] a( b) a([ b)] a2( b16[ a g8.] a16[ b a g~]) g2\fermata 
a4 a4.( b16[ a] g[ a b8]) a4 a2\fermata 
 \bar "|." 
s4 \fixB g
  \bar "|." 
}
\addlyrics { Ра- до вай са, ма- ле, ра- до- вай са, ма- ле }
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
  opus = "ТД-93,2,10"
  tagline = ##f
}


