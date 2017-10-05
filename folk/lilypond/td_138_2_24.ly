%{
sva_138_2_24
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 2 = 38
%%\time 2/4
\cadenzaOn
\phrasingSlurDown
d2. e8([ d32 e d c^"↑"] d16[ e d c]) \afterGrace b4(\( { \stdB c8\) \stdE } a4) b( d8[ c16 b])
b2~( \times 2/3 { b16[ a b] } \times 2/3 { c[ b a~] } a2.) r4 \bar ""
\acciaccatura b8 c4.( d32[ c b16]) \bar ""
\acciaccatura c8 d8[( e32 d c b] c16[ d c b]) \bar ""
a2 b b1 \bar "||"
d2 \acciaccatura d8 e[( d32 e d c^"↑"] d8.[ c16]) \bar ""
\afterGrace b4\(( { c16[ b]\) } a4) \bar ""
b( d8[ c16 b]) \bar "" \afterGrace b2\(( { c16[ b]\) } a2.) r4 \bar ""
\acciaccatura b8 \afterGrace c2\( { \stdB b8\) \stdE } \acciaccatura c8 d4( c8[\prall b16 a])
a2 b b1
 \bar "|." 
 s4 \fixB a \fixC
 \bar "|."  
%%  s4 \fixB a \fixC
%% \bar "|." 
}
\addlyrics { Фли- вай са, фли- вай, ча- шо сре- бър- на,
от мо- ре "в мо-" ре, "в мом-" ко- ви дво- ри }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 38 2)
		}
	}
}
%
\header{
  opus = "ТД-138,2,24"
  tagline = ##f
}


