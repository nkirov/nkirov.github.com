%{
td_096_1_02
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 8 = 152
\time 3/8
d8 d4 | c8 b4 | c8 d16[( c b8]) | \acciaccatura b8 a16[( g]) g4 |
a16[( b]) \afterGrace c8[(\( { \stdB d\) \stdE } c16 b]) | 
c8\noBeam\prall b16\prall[( a g8]) | a8 b32[( a g16] ~ g8) | g8 g4
 \bar "|." 
s8 \fixB c,4
 \bar "|."  
}
\addlyrics { Сно- щи дой- де до- бър ю- нак ни- то ся- да да ви- че- ря  }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 152 8)
		}
	}
}
%
\header{
  opus = "ТД-96,1,2"
  tagline = ##f
}


