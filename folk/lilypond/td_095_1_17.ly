%{
TD_095_1_17
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 120
%\time 5/16
\cadenzaOn
\phrasingSlurDown
\override Glissando #'style = #'zigzag
\stemDown
a8.[( s8.^\ltoe b16]) 
\stemNeutral
c[( d] c[ b] c1\fermata d8[ c32 d c b] 
c8[ \times 2/3 { b16 c b] } c[ b \grace { c16[\( b] } a8]\)~ a2~ a8.[ b16] \bar "" 
\break
c4^\rtoe)
\bar ""
\parS
c16\noBeam c32-\parenthesize\prall[( b] 
\noteFi c16[\glissando \noteFi b])\glissando a8.[( s16^\rtoe g16]) g([ s16^\rtoe a8.]) bes16\noBeam bes![( a8]~ \afterGrace a2.\( { bes!16[ a]\) } g8\noBeam) 
\bar "" 
\break
r16 \bar ""
b!16\noBeam
\bar ""
c[( d c\prall b] c8[ \grace { d16[\( c] } b8]\)) 
\afterGrace b8[(\( { c16[ b]\) } a8]~ a2.) a1\fermata
 \bar "|." 
s4 \fixB e \fixC
 \bar "|."    
}
\addlyrics { Съ- ньо, ти, мой съ- ньо, ти мой ни- вер- ни- ко }
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
		\Score
		tempoWholesPerMinute = #(ly:make-moment 120 4)
		}
	}
}
%
\header{
  opus = "ТД-95,1,17"
  tagline = ##f
}


