%{
sva_140_2_37
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 152
\time 2/4
%\cadenzaOn
\gliss
b4 b8\noBeam b | \noteFi \acciaccatura b8\glissando d4 b | b\mordent( d16[ c b a]) |
c4\prall b | b b8\noBeam b | \noteFi \acciaccatura b8\glissando d4 b | 
\time 3/4 b2. | b4 b2
 \bar "|." 
s2 \fixB a4
  \bar "|." 
}
\addlyrics { Ви- ла са ло- за гроз- да- на: Ми- лу- шо, мой по- бра- ти- ме }
%
\layout {
%   \context { 
%	    \Staff \remove "Time_signature_engraver" } 
  indent = #0
  line-width = 190\mm
  ragged-right=##f
}
%
\midi { 
	\context {
		\Score tempoWholesPerMinute = #(ly:make-moment 152 4)
		}
	}
}
%
\header{
  opus = "ТД-140,2,37"
  tagline = ##f
}


