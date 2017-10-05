%{
sva_093_1_15
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%\tempo 8 = 110
%%\time 2/4
\cadenzaOn
\varA
g4\startTextSpan a2( g4) b\stopTextSpan 
a8( b) \acciaccatura a8 g4 
\varB
s8\startTextSpan a4\stopTextSpan 
b a2( g4) r4 g a2(~ a8[ b]) 
\varC
s8\startTextSpan a4\stopTextSpan 
a2\fermata
 \bar "|." 
s4 \fixB d, \fixC
  \bar "|." 
s16 \clef treble
\varA
b'4\startTextSpan \acciaccatura { a16[ b a g] } a2( g4) b\stopTextSpan  \bar "||"
\varB
a8\startTextSpan([ b\stopTextSpan]) \bar "||"
\varC
s8\startTextSpan b4\stopTextSpan 
 \bar "|." 
}
\addlyrics { Сто- йе- не, Сто- йе- не,  Сто- йе- не, Сто- йе- не }
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
  opus = "ТД-93,1,15"
  tagline = ##f
}


