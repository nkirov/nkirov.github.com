%{
td_139_2_12
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 88
\cadenzaOn
\phrasingSlurDown
b8[( c]) c4( \grace { d16[\( c b] } \afterGrace c1\)\( { \stdB b8\) \stdE } 
\times 2/3 { c8[ b aes]) } \acciaccatura b8 c4 b16[( aes! g8]~ g8.[ f16]) g8[( aes!]) b1~ b4 r b8[( c])
\bar ""
c16[( d8 c16 b] \afterGrace c2.\( { \stdB b8\) \stdE } c8\prall[ b16 aes!]) \acciaccatura b8 c8.
b32[( c] b16[ aes! g8]) g4. r8 f[( g]) g1~ g4
\bar "|." 
s4 \fixB c,
\bar "|." 
}
\addlyrics { Дра- га- но, Дра- ган- ке, ца- ре- ва ро- би- и- ньо }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 88 4)
		}
	}
}
%
\header{
  opus = "ТД-139,2,12"
  tagline = ##f
}


