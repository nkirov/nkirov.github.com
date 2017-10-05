%{
td_138_1_28
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%%\tempo 4 = 120
\cadenzaOn
\phrasingSlurDown
\override Glissando #'style = #'zigzag
\acciaccatura g8 a4 b16[( a g8]) g1~ g2 r4 \acciaccatura g8 a4 
\acciaccatura a8 b1(~ \afterGrace b2\( { a16[ g]\) } a1) r4 r b8([ c])
\bar ""
b8.([ a16] \bar "" g2~ g8[ f] \bar "" e2) \bar "" a1~ a2 r4 \bar ""
g a b1 c4 \bar "" a8[( b16 a] g2. \bar "" a8[ g] f[ g]) r4
\bar ""
g8 f\noBeam e1~ e4 r \bar "" g f e1 r4 b'8([ c]) 
\acciaccatura a8 \afterGrace b1(\( { \stdB a8\) \stdE } g4) a
\bar ""
g4( \noteFi f\glissando e) e1~ e2
 \bar "|." 
}
\addlyrics { %%Тур- чин по- би- ни ка- ра- ше ро- би- ни бе- ли бъл- гар- ки
%%всич- ки- те бя- ха тра- кий- ки 
най на- преж вър- ви Ту- дор- ка,
Ту- дор- ка, сер- бес ни- вя- ста и но- си мъж- ко де- тен- це }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 120 4)
		}
	}
}
%
\header{
%%  opus = "ТД-138,1,28"
  tagline = ##f
}


