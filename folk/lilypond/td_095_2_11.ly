%{
td_095_2_11
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 8 = 240
\time 3/8
\override Glissando #'style = #'zigzag
\varA
d8\startTextSpan d\noBeam d\stopTextSpan | 
a b[(\glissando g]) | g a\noBeam b | c d4 |
d8 d\noBeam d | a \noteFi b[(\glissando g]) | g a\noBeam a | a a\noBeam r
 \bar ":|" 
\endm
 \varA
d8\startTextSpan d\noBeam \noteFi d\glissando \hideNotes g,\stopTextSpan 
 \bar "|."
}
\addlyrics { По- хва- ли- ла се~й Цо- ни- на ма- ма: 
Цо- ни- на ху- бос ний- де я ня- ма: }
\addlyrics { ни "в Ца-" ри- гра- да, ни "в Бу-" дин гра- да
ой, Цо- не, Цо- не, ма- ми- на Цо- не }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 240 8)
		}
	}
}
%
\header{
  opus = "ТД-95,2,11"
  tagline = ##f
}


