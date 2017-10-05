%{
sva_093_2_07
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%%\tempo 8 = 110
%%\time 2/4
\cadenzaOn
a8.\noBeam( b16) c4 \times 2/3 { b16[( c b]~ } \times 2/5 { b32[ c b a b]) }
a2( b32[ a g16]) c8 b32[( c16.]) b8\noBeam g \breathe
\acciaccatura a8 b4 c \bar "" b16[( a b8]) 
\bar ""
a2( b32[ a g16]) r8 
c16([ b]) c8\noBeam
b16.([ a32]) b8 a2\fermata
\bar "|." 
 s8 \fixB fis
 \bar "|."  
}
\addlyrics { За- сяв- ки са за- ся- ва- я, за- сяв- ки са за- ся- ва- я, кой }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 110 8)
		}
	}
}
%
\header{
  opus = "ТД-93,2,7"
  tagline = ##f
}


