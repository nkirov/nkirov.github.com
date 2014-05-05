%{
TD_097_1_06
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 88
%\time 5/16
\cadenzaOn
\phrasingSlurDown
b4 c16[( d c b] c2. d4) \acciaccatura { c16[ d c] } \afterGrace b2.(\( { c8\) }
d4) d \acciaccatura { d16[ c b] } c1( d8.[ c16] b1~ b4) r
\bar ""
a4 b16[( c8.] d4]) c8[\prall( b16 c] b4) b b1.\fermata
 \bar "|." 
s4 \fixB d,
 \bar "|."  
}
\addlyrics { Да зна- йеш, ма- мо, ем да вя- ру- ваш }
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
		tempoWholesPerMinute = #(ly:make-moment 88 4)
		}
	}
}
%
\header{
  opus = "ТД-97,1,6"
  tagline = ##f
}


