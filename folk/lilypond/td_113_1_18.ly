%{
TD_113_1_18
%}

\include "td-preamble.ly"
\include "makam.ly"

\score {
\relative c'' {
\tempo 8 = 144
%\time 5/16
\cadenzaOn
\phrasingSlurDown
g8 a16\noBeam g a[( bfb]) c8( d2~ d16[ efk32 d] c8) c16[( d]) 
d16[(\mordent c32 bfb!] c4.~ c16[ bfk\prall] \grace { c16[\( bfk!] } a8\) g\noBeam)
\bar ""
g1 r4 \bar "" c8 d16\noBeam d8( c16\noBeam) c c\noBeam( d32[ c 
\grace { d16[\( c b] } c16\)]~ c4.~ c32[ bfk a bfk] a16\prall[ g8.]) 
g8 a16[( bfk]) a1\fermata
 \bar "|." 
s4 \fixB bfk! 
 \bar "|." 
}
\addlyrics { Слън- це- то треп- ти, зай- дю- ва, Ди- ми- тър чи- към за- хва- ща }
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
		tempoWholesPerMinute = #(ly:make-moment 144 8)
		}
	}
}
%
\header{
  opus = "ТД-113,1,18"
  tagline = ##f
}


