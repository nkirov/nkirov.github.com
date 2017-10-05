%{
td_141_1_01
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 92
\cadenzaOn
\par
\ii \parenthesize  e4
g16[( a]) a8( \afterGrace b1\( { c16[ b a]\) } b8[ \grace { c16[\( b] } a8])\)
a16\noBeam b[( a8]) \acciaccatura a8 b8.[( a16] \grace { a16[\( b a g] } 
\afterGrace a2.\)\( { b16[ a g]\) } a8\prall[ g]) g16\noBeam
a32[( b] \grace { \stdB a8\( \stdE } g\))
\bar ""
g16[( a g32 a g fis] g2~ g16[ f e d]) r4 
b'8[( a])
a16[( b c b] a[\prall g a32 b a g]) g8[( fis!]) g8 g\noBeam(~ g16[ f e f])
\bar ""
e8 e\noBeam~ e2 \afterGrace e2.(\( { f16[ e]\) } d8) r g16[( a8.]) 
a16[( b a g] a16.[ b32 a16 g]) g[( fis!]) g8 g4(~ g16[ f e f]) e8 e\noBeam~ e2
e2 r4
\bar ""
g16[( a8.^\ltoe]) a16[( b8.] b8[ a16\prall g] a[ b a g]) g16[( fis]) g8 
g\noBeam\prall( \times 4/5 { f16[ g f e f]) } e8 e\noBeam~ e2 e1
 \bar "|." 
s4 \fixB b
 \bar "|."  
}
\addlyrics { "(и)" Сто- ян на ни- ва о- ре- ше, хем о- ре Сто- ян, и пла- че,
че- сто към се- ло по- гля- ва ка- къв ще ха- бер "да м'" дой- де }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 92 4)
		}
	}
}
%
\header{
  opus = "ТД-141,1,1"
  tagline = ##f
}


