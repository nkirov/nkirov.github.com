%{
TD_097_1_25
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 84
%\time 5/16
\cadenzaOn
\phrasingSlurDown
\acciaccatura a8 \afterGrace b2\( { \stdB c8\) \stdE } d32[( e d\prall cis] d8~ d2
e8[ d32 e d c] d16[ c b c]) 
\acciaccatura c8 d d16[( e] d[ c b c]) b2 b~ b8 r
\bar ""
\parS
b16[( c d-\parenthesize\prall c]) c32[( d c\prall b] c8~ \afterGrace c2\( { \stdB d8\) \stdE } 
\grace { \stdB e8\( \stdE } d32\)[ c b c] b4 d16[ c]) d16 c\prall[( b c]) b2 b1
 \bar "|." 
s4 \fixB cis,
 \bar "|."  
}
\addlyrics { Ка- рай, Я- но, ка- рай на- край да из- ле- зем }
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
		\Score
		tempoWholesPerMinute = #(ly:make-moment 84 4)
		}
	}
}
%
\header{
  opus = "ТД-97,1,25"
  tagline = ##f
}


