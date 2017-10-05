%{
td_093_2_01
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%%\tempo 8 = 176
\cadenzaOn
g4 \acciaccatura { f16[ g f e] } f2 e4.( f8) g4 f8( g4.) 
g16[( f] \grace { g16[\( f e] } f4.\)) f8 g4. \acciaccatura { g16[ f e] } f4
e2( f16[ e f e]) e2\fermata
 \bar "|." 
s4 \fixB cis
 \bar "|."  
}
\addlyrics { Де- ни- ца, о- гре- я, звез- да Де- ни- ца }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 176 8)
		}
	}
}
%
\header{
  opus = "ТД-93,2,1"
  tagline = ##f
}


