%{
TD_097_1_11
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 152
 \time 2/4
% \tempo 8 = 168
% \time 7/16
b8 c\noBeam c c\noBeam | b4 a | b8( c) c4 | b4( c16[ b a8]) | \acciaccatura b8 c4 c |
b4 a8( b) | a( g)  g4 | g2 | \acciaccatura g8 a4 a | a4. f8 | \acciaccatura g8 a4 a |
a4( \grace { \stdB b8\( \stdE } a\)[ g]) | g8\noBeam a b\noBeam c | b4 a8( b) | a( g) g4 | g2\fermata
 \bar "|." 
}
\addlyrics { Ти ли бе- ше, лю- бе И- ва- не, де- то ми се хва- ле- ше, 
де- то ми се хва- ле- ше, че и- ма- те къ- щи ви- со- ки }
%
\layout {
  indent = #0
  line-width = 190\mm
  ragged-right=##f
}
%
\midi { 
	\context {
		\Score
		tempoWholesPerMinute = #(ly:make-moment 152 4)
		}
	}
}
%
\header{
  opus = "ТД-97,1,11"
  tagline = ##f
}


