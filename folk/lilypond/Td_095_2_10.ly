%{
td_095_2_10
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 176
\time 2/4
 a4 e' | e2 | \acciaccatura e8 d4 c8[( b]) | g4 e' | e2 | \acciaccatura e8 d4 c8[( b]) |
 \bar "|:"
 g4 c8[( b]) | a4 r | d c8\prall[( b]) | g4 c8[( b]) | a4.( d8) | a4 a
 \bar ":|" 
}
\addlyrics { О- ста- вай сбо- гом, о- ста- вай сбо- гом, 
ой, рой- не, рой- не, син- зи- лен ви- нец }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 176 2)
		}
	}
}
%
\header{
  opus = "ТД-95,2,10"
  tagline = ##f
}


