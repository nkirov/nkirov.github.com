%{
td_093_2_02
%}

\include "td-preamble.ly"

\score {
\relative c' {
%\tempo 8 = 176
%\cadenzaOn
\time 2/4
c4 d8([ e]) | f4. g8 | f4 f8[( e]) | e[( f]) f[( e]) | e4 d | d4. e8 |
e4 d | d d\fermata 
 \bar "|." 
s4 \fixB cis
 \bar "|."  
}
\addlyrics { Бре Сто- йе- ни, хай- ду- ти- но, бре, Сто- йе- ни, хай- ду- ти- но }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 176 8)
		}
	}
}
%
\header{
  opus = "ТД-93,2,2"
  tagline = ##f
}


