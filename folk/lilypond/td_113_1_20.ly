%{
td_113_1_20
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 8 = 184
\cadenzaOn
g8 a16[( b]) b4.( \times 4/5 { c32[ b a b a] } g8\noBeam) a16[( b]) 
b\prall[( a]) a2( g8\mordent^\markup { \sharp }) g16[( fis]) e8.([ d16]) \breathe
\bar ""
e16[( fis!]) g[( fis!]) g8\noBeam( a4. g16[ fis!]) g[( fis!]) e8\noBeam 
e1 e16 e\noBeam~ e8
 \bar "|." 
s4 \fixB f
 \bar "|."  
}
\addlyrics { Ма- рий- ка бу- ли ду- ма- ше: Бу- льо ма, ми- лин- ка бу- льо }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 184 8)
		}
	}
}
%
\header{
  opus = "ТД-113,1,20"
  tagline = ##f
}


