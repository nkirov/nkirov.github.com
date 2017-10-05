%{
td_096_1_03
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 100
\cadenzaOn
\phrasingSlurDown
g4 aes8[( b]) c16[( b \grace { aes!16\([ b] } aes8]\) g4^\ltoe) g1 
\acciaccatura b8 c2
\acciaccatura { aes!16[ g] } aes4 b c8([ b]) aes![( g]) g4
\bar ""
\afterGrace aes4^\rtoe\( { \stdB  b8\) \stdE } \bar "" c4 \bar ""
c16[( b \grace { aes!16\([ b] } g\)]~ g2^\rtoe) \bar "" g1 \bar "" r4 \bar ""
g8.([ aes!16] b8[ c]~ c4) \afterGrace c8[(\( { \stdB d\) \stdE } c16 b]) 
b4( c16[ b] aes!\prall[ g])
\bar ""
g2(~ g8[ aes!]) c[( b] aes!^"↑"[ g^\ltoe]) g1\fermata
 \bar "|." 
s4 \fixB d
 \bar "|."  
}
\addlyrics { Край Ду- на- ва рос- на три- ва рас- те,  
край Ду- на- ва рос- на три- ва рас- те }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 100 4)
		}
	}
}
%
\header{
  opus = "ТД-96,1,3"
  tagline = ##f
}


