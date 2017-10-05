%{
sva_179_2_03
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 138
\time 2/4
%\cadenzaOn
d8([ c]) d([ e]) | f4( g16[ f e8]) | d4 \acciaccatura e8 f4 | f8([ e]) d4 |
d4.( e8) | f[( e]) d4 | d2 | 
\varA
c4\startTextSpan d\stopTextSpan | 
d8 d4. | d4 r 
 \bar "|." 
 s4 \fixB e \fixC
 \bar "|." 
 \endm
\varA
c4\startTextSpan d8([ c\stopTextSpan]) 
 \bar "|."  
}
\addlyrics { Си- деф- ка ра- но ра- ни- ла, ра- но ми ра- но "в ни-" де- ля }
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
  opus = "ТД-179,2,3"
  tagline = ##f
}


