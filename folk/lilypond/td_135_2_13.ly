%{
td_135_2_13
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 168
\time 2/4
c4 b | a8[( g]) g4 | a8[( b]) g4 | a a8[( b]) | c4 b | 
\varA
a8\startTextSpan[( g]) g4\stopTextSpan | 
a8[( b]) g4 |
\varB
a\startTextSpan a\stopTextSpan 
\bar "||"
c4^"III мел. редица" b | a8[( g]) g4 | a8[( b]) g4 | a a
 \bar "|." 
s4 \fixB a \fixC
 \bar "|." 
\endm
\varA
a4\startTextSpan g\stopTextSpan \bar "||"
\varB
a\startTextSpan a8[( b\stopTextSpan])
  \bar "|." 
}
\addlyrics { Връз- сед- на си до- бър ю- нак ба- щин' та си хра- нян ко- ня,
я плад- ни- на сряд Со- фи- я }
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
  opus = "ТД-135,2,13"
  tagline = ##f
}


