%{
td_141_1_05
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 84
\cadenzaOn
\phrasingSlurDown
a8. a16\noBeam a4^\rtoe c8[( d]~ d2) d8[( c32 d c b] c[ d c b a8])
\parS
a16[( b] a32[ b a gis] a1) r4 \bar "" a8. a16\noBeam a4-\parenthesize^\ltoe
\bar ""
\acciaccatura c8 d2 \bar ""
d8[( c32 d c b] c[ d c b a8]) b1 r4 \bar "" 
a8. a16\noBeam
a4^\ltoe \acciaccatura c8 d2 \bar ""
d8[( c32 d c b] c4. \bar "" \times 4/5 { d32[ c b c d]) }
\bar ""
b4( a32[ b a gis! a8]~ \bar "" a[ \grace { \stdB b8\( \stdE } a16\) gis!]) 
\bar "" f!16[( e)] \bar ""
f8(~ f2~ f8[ g32 f e f] \bar "" g16[ f e d]) r4 \bar "" \acciaccatura gis!8 a 
a\noBeam( b2~ b8[ \grace { c16[\( b] } a8]\))
\bar ""
\acciaccatura a8 b[( \times 2/3 { a16 gis! a] } \grace { b16[\( a] } gis!8[\) f!])
\bar ""
gis!8\prall[( f!16\prall e32 f]) e8 e\noBeam~ e2
 \bar "|." 
s4 \fixB b
  \bar "|." 
}
\addlyrics { Тръг- на- ла е Ян- ка във го- ра зе- ле- на, във го- ра зе- ле- на,
Ян- ка, я- го- ди да бе- ре }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 84 4)
		}
	}
}
%
\header{
  opus = "ТД-141,1,5"
  tagline = ##f
}


