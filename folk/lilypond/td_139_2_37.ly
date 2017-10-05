%{
sva_139_2_37
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 126
\time 2/4
%\cadenzaOn
c8([ d]) a4 | d8([ e]) e([ d]) | d4 a | c8([ d]) d([ c]) | 
\acciaccatura d8 c([ b]) a4 | 
\parS
\acciaccatura b8 c4 c8-\parenthesize\prall([ b]) | c([ d]) a4 | a a 
 \bar "|." 
s4 \fixB d,
 \bar "|."  
}
\addlyrics { До- че, До- че, ка- дън До- че,  До- че пе- ре на ре- ка- та }
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
  opus = "ТД-139,2,37"
  tagline = ##f
}


