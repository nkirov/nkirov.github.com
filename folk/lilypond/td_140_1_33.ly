%{
td_140_1_33
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 96
\cadenzaOn
\acciaccatura g8 a[( g]) g[( a]) a1(~ \afterGrace a4\( { g8\) } a^\ltoe[ g^\rtoe]) 
\acciaccatura g8 a4 \afterGrace g4(\( { f16[ g]\) } a8[ g]) 
\acciaccatura f8 g4^\ltoe f8[( s^\ltoe e]) d2~ d4 r
\bar ""
a'8[( g]) g[( a]) \afterGrace a1(\( { \stdB g8\) \stdE } a8^\ltoe[ g^\rtoe]) a4  
\afterGrace g4(\( { f16[ g]\) } a8[ g]) f16[( g]) e8~ e2. e1~ e2
 \bar "|." 
s4 \fixB c
 \bar "|."  
}
\addlyrics { Сли- за- ло мом- че гор- нен- че йот- го- ре, йот пла- ни- на- та }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 96 4)
		}
	}
}
%
\header{
  opus = "ТД-140,1,33"
  tagline = ##f
}


