%{
td_134_2_12
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 120
\cadenzaOn
\phrasingSlurDown
\override Glissando #'style = #'zigzag
c4 d8[( e]~ e1~ e8[ f] e[\prall d] \times 2/3 { e16[ f e } d c])
c8[( d]~ d2 e16[ f e\prall d] \times 2/3 { e16[ f e } d c])
d4( c16[ d c b^"↓"] c[ d c bes])
\bar ""
a1( \times 2/3 { b16[ a\prall g)] } r4 r \bar "" a8[( b]) 
c16[( d c\prall b] c2 \afterGrace d4\( { e16[ d c]\) } 
d16[ e d] c[ b^\rtoe]) \bar ""
\noteFi \afterGrace c4(\(\glissando { b16^"↓"[ c b]\) } a8[ bes]) \bar ""
a8 a(\noBeam~ a1~ \afterGrace a2\( { bes!16^"↑"[ a]\) } g4) r4 r
\bar ""
a8[( b]) \afterGrace c2(\( { b16[ c]\) } \afterGrace d4\( { c16[ b]\) }
c16[ d c b]) c4\glissando( \times 2/3 { b16^"↓"[ c b] } a[ bes]) \bar ""
a8 a\noBeam~ a2. r4 \bar "" d16[( e])
\bar ""
\times 2/3 { d16[( e d] } \grace { c16[\( d c b] } c4\)) \bar ""
c4( \times 4/5 { bes!16[ c bes a bes] } a8[ bes!]) a8 a\noBeam~ a1~ a
 \bar "|." 
s4 \fixB d,
 \bar "|."  
}
\addlyrics { За- лю- би- ла я дваж бя- ла Ра- да два ли- бов- ни- ка, 
три ни- вер- ни- ка }
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
  opus = "ТД-134,2,12"
  tagline = ##f
}


