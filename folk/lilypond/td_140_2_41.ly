%{
sva_140_2_41
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 120
%\time 2/4
\cadenzaOn
\phrasingSlurDown
\parS
d8([ c^"↑")] d-\parenthesize\mordent[( c b a]) b2. d8([ c]) \acciaccatura c d([ c b a]) b4 b2.( a4) b2. r4
\bar ""
b8([ a]) \acciaccatura c8 b2( \grace { d8\( } c4)\) a2. b4 b16[( a b8] a4) b b1( d8[ c])
b2.
\bar "|." 
s4 \fixB g
\bar "|." 
}
\addlyrics { Скрий- те ма, бра- те, скрий- те ма във ва- шта рав- на гра- дин- ка }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 120 4)
		}
	}
}
%
\header{
  opus = "ТД-140,2,41"
  tagline = ##f
}


