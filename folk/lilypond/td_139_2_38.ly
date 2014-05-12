%{
sva_139_2_38
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 126
\time 2/4
%\cadenzaOn
c8([ d]) a4 | d8([ e]) e([ d]) | 
\varA
d4\startTextSpan a\stopTextSpan | 
c8([ d]) d([ c]) | c([ b]) a4 |
c c8([ b]) | c([ d]) a4 | a a
 \bar "|." 
s4 \fixB c, \fixC
  \bar "|." 
\endm
\varA
d'4\startTextSpan a8\noBeam a\stopTextSpan | 
   \bar "|." 
}
\addlyrics { Ба- би, ба- би, де- вет ба- би, съ- бра- ли се де- вет ба- би }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 126 4)
		}
	}
}
%
\header{
  opus = "ТД-139,2,38"
  tagline = ##f
}


