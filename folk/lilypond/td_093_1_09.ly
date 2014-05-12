%{
sva_093_1_09
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%%\tempo 8 = 110
%%\time 2/4
\cadenzaOn
b4 
\varA
a2\startTextSpan( g4\stopTextSpan) 
b a8( b) g4 b
\varB
s4\startTextSpan b\stopTextSpan 
a2.( g4) r4 g a2( b4) b a2\fermata 
 \bar "|." 
s64 \clef treble 
\varA
b16\startTextSpan([ a g8\stopTextSpan)] \bar "||"
\varB
a8\startTextSpan[( b\stopTextSpan]) 
 \bar "|." 
}
\addlyrics { И- ван стря- лки стря- ла, И- ван стря- лки стря- ла }
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
  opus = "ТД-93,1,9"
  tagline = ##f
}


