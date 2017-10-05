%{
td_141_1_25
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 72
\cadenzaOn
g4 a16[( s^\ltoe g]) f8^\rtoe e8.[( d16]) c4 
a'8.[( b16]) c[( b a g]) g2( a16[ g f e] d2 c8) r
\bar ""
e8.[( g16]) \bar "" g[( f]) \bar "" f[( e]) \bar "" e8.[( d32 c]) \bar ""
c4 \bar "" d8[( c32 d]) e16[( d c8]) c2. r4
\bar ""
e8.[( g16]) g[( f]) f8 e8.[( d16]) c4 d8[( c16 d]) e[( d c8]) c2.
 \bar "|." 
s4 \fixB bes
 \bar "|."  
}
\addlyrics { Сед- на- ла бе- ше Дра- ган- ка във та- я рав- на гра- дин- ка,
във та- я рав- на гра- дин- ка }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 72 4)
		}
	}
}
%
\header{
  opus = "ТД-141,1,25"
  tagline = ##f
}


