%{
sva_139_2_35
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 120
\time 2/4
%\cadenzaOn
\varA
\acciaccatura b8\startTextSpan c4 \acciaccatura c8 d4\stopTextSpan | 
d16[( c b8]) a4 | 
\varA
\acciaccatura b8\startTextSpan c4 \acciaccatura c8 d4\stopTextSpan | 
d16[( c b8]) a8([ g]) | 
\varB
b4\startTextSpan b16([ a g a\stopTextSpan]) | 
\varC
g4\startTextSpan(~ g16[ a g f\stopTextSpan]) | 
g8([ a])  \acciaccatura a8 b4 | b a8([ b]) | 
\varD
a4\startTextSpan^\ltoe g\stopTextSpan^\rtoe | 
g r
 \bar "|." 
 s4 \fixB d \fixC
  \bar "|." 
\endm
\varA
b'8\startTextSpan[( c]) c8([ d\stopTextSpan]) \bar "||" 
\varB
b4\startTextSpan \acciaccatura { b16[ a] } g4\stopTextSpan \bar "||" 
\varC
\set Score.measureLength = #(ly:make-moment 3 4)
s4\startTextSpan g2\stopTextSpan \bar "||"
\set Score.measureLength = #(ly:make-moment 2 4)
\varD
a8\startTextSpan[( g]) g4\stopTextSpan^\rtoe 
 \bar "|."   
}
\addlyrics { На- ред се- дят, на- ред се- дят мо- ми и мом- ци, мо- ми и мом- ци }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 120 4)
		}
	}
}
%
\header{
  opus = "ТД-139,2,35"
  tagline = ##f
}


