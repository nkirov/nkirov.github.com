%{
td_134_1_36
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 138
\time 2/4
a4 e' | e2 | e8[( d]) d4 | a d | d2 | e8[( d]) c[( b]) | g4 a | a2 |
d8[( c]) c[( b]) | g4 a | a2 | a4 a | 
 \bar "|." 
s4 \fixB f
 \bar "|."  
}
\addlyrics { От бал- кан сли- зат, във се- ло вли- зат, ой, ко- ла- де, мой
ко- ле- до льо }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 138 4)
		}
	}
}
%
\header{
  opus = "ТД-134,1,36"
  tagline = ##f
}


