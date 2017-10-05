%{
td_139_2_14
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 112
\cadenzaOn
e8[( f]) g2.( aes16[ g f8]) g[( aes!]) g8.[( aes16] g8[ f16 e] f[ g f e])
\afterGrace d2(\( { e16[ f e]\) } c4) \acciaccatura e8 f4 
\varA
f8\startTextSpan[( g]~ g2\stopTextSpan)
f4( \grace { g16[\( f e] } f2.\)~ f1) r4
\bar ""
f4 f( g1 aes!16[ g f8]) g[( aes!]) \afterGrace g4(\( { aes!16[ g]\) } f8[ e]
f16[ g f e]) d2(~ d8[ e]) f[( e]) d1 d~ d2
 \bar "|." 
s4 \fixB b \fixC
  \bar "|." 
  s16 \clef treble 
\varA
f'8\startTextSpan[( g]~ \afterGrace g2)\( { aes16[ g f\stopTextSpan\)]  }
  \bar "|." 
}
\addlyrics { От го- ре, ма- мо, сли- за- ха тро- и- ца вак- ли ов- ча- ря }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 112 4)
		}
	}
}
%
\header{
  opus = "ТД-139,2,14"
  tagline = ##f
}


