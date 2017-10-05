%{
td_140_1_12
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 132
\cadenzaOn
\par
\ii \parenthesize d4
a4. g8 g4( a2.) \acciaccatura { c16[ bes] } a2.(~ a16[ bes! a g] a8\prall[ g])
g4( a1) r4 \bar "" c8[( bes!]  \bar "" a2~ a16[ bes! a g]  \bar "" a[ bes a g] f4)
\bar ""
g1(~  \bar "" \times 2/3 { g8[ f e]) } \bar "" f4( g1) r4 \bar ""
a8.^\rtoe[( g16]) g8.^\rtoe[( f16])  \bar ""
\acciaccatura g8 a1 \bar "" a4(~ a16[ bes! a g]  \bar "" a[ bes a g] f4)
\bar ""
g2( a4) \bar "" g( f16[ e c8]) \bar "" d4 \bar "" d1~ d4 r \bar ""
\acciaccatura g8 a4  \bar "" \acciaccatura g8 f4^\rtoe \bar ""
\acciaccatura g8 a2(~ a16[ bes! a g]  \bar "" a[ bes a g] f4)
\bar ""
g2( a4) g8[( f16 e] c4) \bar "" d8 d\noBeam~ d2. d1~ d2
 \bar "|." 
s4 \fixB b
 \bar "|."  
}
\addlyrics { "(ъ)" Слав- чо на Я- на ду- ма- ше: Я- но льо, бя- ла ка- дъ- но, ти чу- ла ли си, Я- но льо }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 132 4)
		}
	}
}
%
\header{
  opus = "ТД-140,1,12"
  tagline = ##f
}


