%{
sva_139_2_34
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 120
\time 3/4
%\cadenzaOn
\varA
b4\startTextSpan a4.( g8\stopTextSpan) | 
a8([ b]) a4( b16[ a g8]) | a8([ b])  b8.([ c16 b8 a]) | g4 a2 |  
\varB
a8\startTextSpan([ b]) a8.([ b16 a8 g\stopTextSpan]) | 
a4 a2\fermata
 \bar "|." 
 s2 \fixB ees4 \fixC
  \bar "|." 
\set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 3 4)  
 \clef treble  
\varA
g4\startTextSpan a2\stopTextSpan \bar "||"  
\varB
a8\startTextSpan([ b]) a4.( g8\stopTextSpan) 
 \bar "|."   
}
\addlyrics { Ти, мом- ко- ва ма- ле, из- ле- зи, по- глед- ни }
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
  opus = "ТД-139,2,34"
  tagline = ##f
}


