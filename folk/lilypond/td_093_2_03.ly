%{
td_093_2_03
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%\tempo 4 = 60
\cadenzaOn
b4 b8([ c]) a16[( b] \grace { a[\( g^"↑"] } a4.\)) a4  b8[( c]) 
a16[( b] \grace { a[\( g^"↑"] } a4.\)) a8[( b]) \times 2/3 { g8[( a g] } 
\grace { f16[\( e] } f4\) \grace { e16[\( d] } e4\))
\bar ""
g4 g8([ a]) f[( g] \grace { f16[\( e] } f4\) \grace { e16[\( d] } e4\))
f8\noBeam f[( e]) d2 d4 d2\fermata
 \bar "|." 
s4 \fixB b
 \bar "|."  
}
\addlyrics { Про- чул са Нен- чо вой- во- да, про- чул са Нен- чо вой- во- да }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 60 4)
		}
	}
}
%
\header{
  opus = "ТД-93,2,3"
  tagline = ##f
}


