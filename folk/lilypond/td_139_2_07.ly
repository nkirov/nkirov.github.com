%{
td_139_2_07
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 144
\cadenzaOn
\times 2/3 { b2 a4 } d1\mordent^\markup { \sharp }~ d2 \times 2/3 { d4( e) d } 
d8[( e d c] d[ e] d4) d8.\prall[( c16] b4) b1~ b r4
\bar ""
d4 c c8[( d c b^"↓"] c2~ c1) d4 c c8( d4 c16[ b] c4 d16[ c b c]) b2 b1 ~ b
 \bar "|." 
s4 \fixB d,
 \bar "|."  
}
\addlyrics { Слън- це- то треп- ти, за- хож- да, Ди- ми- тър че- към за- хва- ща }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 144 4)
		}
	}
}
%
\header{
  opus = "ТД-139,2,7"
  tagline = ##f
}


