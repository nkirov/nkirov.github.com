%{
td_097_1_04
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 144
\cadenzaOn
f4 g2. aes4 aes!8[( g^\ltoe aes]) b4( c2) b4 aes!8([ b] aes16[ g aes8]) g1. r4 r
\bar ""
b4 c2 b4 \times 2/3 { aes!8[( b aes } g aes]) 
\afterGrace g1\( { \stdB aes!8\) \stdE }
b16[( s^\rtoe aes!8.]) g2. g1\fermata
 \bar "|." 
s4 \fixB c,
  \bar "|." 
}
\addlyrics { Да са про- ва- лят, ма- мо льо, се- ля- ни и чор- ба- джи- и }
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
  opus = "ТД-97,1,4"
  tagline = ##f
}


