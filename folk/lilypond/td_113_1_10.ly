%{
sva_113_1_10
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 120
%%\time 2/4
\cadenzaOn
\acciaccatura c8 d4 d8( c) b4 b8([ a] g4\prall) g2. g8( a~ a4. g8) \breathe
b8[(\prall a~] a4) a2.( b16[ a g8]) r4
 \bar ""
g8( a) b[( c]) b4 \afterGrace a4(\( { b16[ a\)] } \times 2/3 { g8[ a g]) }
b4( d16[ c b8]) b8( a \times 2/3 { g8[ a g]) } g8\noBeam g~ g2\fermata
 \bar "|." 
 s8 \fixB b,
 \bar "|." 
}
\addlyrics { Ка- то за бул- ка фти- вах- ми, виш- ни, ча- ре- ши цъф- тя- ха }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 120 4)
		}
	}
}
%
\header {
  opus = "ТД-113,1,10"
  tagline = ##f
}


