%{
td_097_1_08
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 8 = 176
\time 3/8
d8 d4 | c8 b8.[( c16]) | d8 c[( b]) | a16[( g]) g4 | b16[( c]) c4 |
d16[( c]) b4 | c16[( b]) a16.[( b32] a16[ g]) | g8 g4\fermata 
 \bar "|." 
s8 \fixB a,4
 \bar "|." 
}
\addlyrics { Сно- щи дой- де до- бър ю- нак до- ру сър- дит, до- ру гне- вян }
%
\layout {
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
  opus = "ТД-97,1,8"
  tagline = ##f
}


