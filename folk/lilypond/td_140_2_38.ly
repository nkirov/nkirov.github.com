%{
sva_140_2_38
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 132
\time 2/4
%\cadenzaOn
\acciaccatura b8 a4 b | 
\varA
b4.\startTextSpan^\rtoe( a8\stopTextSpan) | 
\acciaccatura c8 d4( \times 4/5 { e16[ d c b a]) } | 
d4-\parenthesize^\ltoe \acciaccatura d8 c4 |
b4.( a8) | a2~ | a4 r | a b | 
\bar "" \break
\varA
b4.\startTextSpan^\rtoe( a8\stopTextSpan) | 
d4\mordent~( d16[ c b a]) |
\acciaccatura c8 d8.([ c16]) \acciaccatura c8 d8.([ c16]) |
b2~( | b4 a) | b2~ | b4 r
 \bar "|." 
s4 \fixB g \fixC
 \bar "|." 
\endm
\varA
\slurDown \time 3/4 b2\startTextSpan(~ b8[ a\stopTextSpan]) 
 \bar "|." 
}
\addlyrics { Е- бре Бър- зьо, лу- ди- мла- ди, ко- му, Бър- зьо, ма- ма ду- ма }
%
\layout {
 %  \context { 
%	    \Staff \remove "Time_signature_engraver" } 
  indent = #0
  line-width = 190\mm
  ragged-right=##f
}
%
\midi { 
	\context {
		\Score tempoWholesPerMinute = #(ly:make-moment 132 4)
		}
	}
}
%
\header{
  opus = "ТД-140,2,38"
  tagline = ##f
}


