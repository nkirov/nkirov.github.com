%{
sva_095_2_08
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 152
%\time 2/4
\cadenzaOn 
a8([ b)] c8.( b16) a16( b8.) a4.( \times 2/3 { b16[ a g] } c8\noBeam) b a\prall\noBeam
g a([ b)] c8[( \times 2/3 { d16 c b]) } c16( b a8) a2\( \acciaccatura { b16[ a] } g2\)~
g8 r c\noBeam b\noBeam a16( g) a([ b]) a2\fermata
 \bar "|." 
}
\addlyrics { Стой, де- ви- ро, не бий вър- та, 
стой, де- ви- ро, не бий вър- та, ко   }
%
\layout {
   \context { \Staff \remove "Time_signature_engraver" } 
  indent = #0
  line-width = 190\mm
  ragged-right=##f
}
%
\midi { 
	\context {
		\Score
		tempoWholesPerMinute = #(ly:make-moment 88 4)
		}
	}
}
%
\header{
  opus = "ТД-95,2,8"
  tagline = ##f
}


