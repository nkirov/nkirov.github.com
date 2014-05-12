%{
sva_139_2_32
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 112
\time 3/4
%\cadenzaOn
g4 a2 | a8([ b]) a4( b16[ a g8]) | a8([ b]) b4( c16[ b a8]) |  g4 a2 | 
a8([ b]) a4( b16[ a g8]) |  a4 a2\fermata  
 \bar "|." 
 s4. \fixB e4 s8
\bar "|." 
}
\addlyrics { Тва, що са бе- ле- йе, бе- ле- йе, лъ- ще- йе }
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
  opus = "ТД-139,2,32"
  tagline = ##f
}


