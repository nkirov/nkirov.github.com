%{
td_181_1_20
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 144
%%\cadenzaOn
\time 2/4
\varA
d8\startTextSpan[( c]) d[( ees\stopTextSpan]) | 
f2 | f8[( g]) g4 | f8[( ees]) d[( ees]) | f4.( ees8) |
d8[( c]) d4 | d2 | f4 f8[( ees]) | 
\varB
d8\startTextSpan d4.\stopTextSpan | 
d2
 \bar "|." 
s4 \fixB d \fixC
  \bar "|." 
\endm
\varA
d8\startTextSpan[( c]) d4\stopTextSpan \bar "||"
\varB
d4\startTextSpan d\stopTextSpan
   \bar "|." 
}
\addlyrics { Ма- ма Сто- я- не ду- ма- ше: Сто- я- не, си- но Сто- я- не }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 144 4)
		}
	}
}
%
\header{
  opus = "ТД-181,1,20"
  tagline = ##f
}


