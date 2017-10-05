%{
td_138_1_28
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 120
\cadenzaOn
\phrasingSlurDown
\acciaccatura g8 a4 a8[( g]) g1 \acciaccatura g8 a4 
\acciaccatura a8 b1(~ \afterGrace b2\( { a16[ g]\) } a1) r4 r
b8[( c]) b8.[( a16] g2~ g8[ f] e2) a1~ a2 r4
\bar ""
g4  \bar "" a  \bar "" b1  \bar "" c4 \bar "" a8[( b16 a] g2.  \bar ""
a4. g8 f[ g]~ g4\noBeam) r8 \bar ""f4 e \bar "" e1~ e2 r4 r
\bar "" \break
g4 f e1 r4  \bar "" b'8[( c])  \bar "" \acciaccatura a8 
\afterGrace b1(\( { \stdB a8\) \stdE } g4) a  \bar ""
g8[( a16 g] f4 e) e1~ e4
 \bar "|." 
s4 \fixB b
 \bar "|."  
}
\addlyrics { Тур- чин ро- би- ни ка- ра- ше, ро- би- ни, бе- ли бъл- гар- ки,
всич- ки- те бя- ха тра- кий- ки %%най на- преж вър- ви Ту- дор- ка
%%Ту- дор- ка сер- бес ни- вя- ста и но- си мъж- ко де- тен- це 
}
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
  opus = "ТД-138,1,28"
  tagline = ##f
}


