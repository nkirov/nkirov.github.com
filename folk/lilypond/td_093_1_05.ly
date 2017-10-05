%{
sva_093_1_05
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%%\tempo 8 = 110
%%\time 2/4
\cadenzaOn
\acciaccatura { b16[ a] } b4 a2( b16[ a g8]) a4 
\varA
b8\startTextSpan([ c]) b4\stopTextSpan 
b16[( a8.]) 
a4 a2.( g8) r8 r4 
\varB
b4\startTextSpan \acciaccatura b8 a2~( a8[ b\stopTextSpan]) 
a4 a2\fermata
 \bar "|."
 s16 \clef treble
\varA
b4\startTextSpan c\stopTextSpan \bar "||"
\varB
g4\startTextSpan  a2( b16[ a b8\stopTextSpan]) 
  \bar "|." 
}
\addlyrics { Я- но, мо- ме Я- но, Я- но, мо- ме Я- но }
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
  opus = "ТД-93,1,5"
  tagline = ##f
}


