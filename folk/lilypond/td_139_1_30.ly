%{
td_139_1_30
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 66
\cadenzaOn
\override Glissando #'style = #'zigzag
\phrasingSlurDown
a4 b2^\ltoe b8[( a]) b2.~ b8 r 
b8[( c32 b a b] \grace { c16[\( b] } a4^\rtoe\))
a2( \afterGrace b8[\( { a16[ b]\) } \grace { c16[\( b] } a8]\))
a( g) a1 r4
\bar ""
b2( c32[ b a b] c[ b a b]) \bar "" a8\prall([ g)] a4.\prall 
g8( a2 c32[ bes a bes] c[ bes! a]) r32^\rtoe
\afterGrace a8^\rtoe[(\( { g16[ f^"↑"]\) } \grace { g16[\( a g] } f!8]\)) 
\bar ""
e2. e4^\ltoe e2( d8) r \bar ""
\acciaccatura a'8 b!2( c32[ b a b] c[ b a b]) \bar "" 
a8\prall([ g16)] r16 \bar ""
a8([ g)]
\bar ""
\acciaccatura g8 a2( c32[ bes a bes] c[ bes! a16]) \bar ""
a\prall([ s^\rtoe g)]
\acciaccatura a8 g16([\glissando s^\rtoe e)] e2 e
 \bar "|." 
s4 \fixB e
 \bar "|." 
}
\addlyrics { Ма- ри мо- ме, мал- ка мо- ме, тръг- на- ла йе мал- кай мо- ма
на Ге- ре- ня, на ге- ра- ни }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 66 4)
		}
	}
}
%
\header{
  opus = "ТД-139,1,30"
  tagline = ##f
}


