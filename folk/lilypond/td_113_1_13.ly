%{
sva_113_1_13
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 92
%%\time 2/4
\cadenzaOn
\phrasingSlurDown
g2. \acciaccatura b8 c8. c16\noBeam c8.([ d16]~ d1 c8[ \grace { d16[\( c] } b]\)
c16[ d c b] c8[ b\prall] a2~ a8\noBeam) g8 \grace { \stdB b8\( \stdE } c8\)\noBeam g8
\acciaccatura b8 c[( c16\prall b] \grace { c16[\( d c b] } a4\)) b8.([ a16]) 
 \bar ""
a8[( b] \grace { a16[\( b a gis] } a2.\)) r4
 g16[( a]) b[( c]) c8[( d]~ d2 c8\prall[ b] c16[ d c b] b8\prall[ a]) a8\noBeam^\ltoe b\noBeam^\ltoe
 a8( b] \grace { a16[\( b a g] } a4\)) g8\noBeam g~ g2 r4
 \bar ""
 g16[( a]) a8\noBeam~ a2 \afterGrace a(\( { \stdB g8\) \stdE } \grace { a16[\( b a g] } f4\))
 f8 g16[( a]) a16([ b^"↓" a g] a[ b^"↓" a g]) g8\noBeam g~ g4 r4 g4 a^\rtoe \acciaccatura b8 c4( b) 
 \bar ""
 a8\noBeam b16[( a]) b8.([ a16 b] a8[ g16 a]) g8\noBeam g~ g4 \breathe 
d'8.([ c16]) c8([ d]) d2.(~ d8[ c16\prall b] c8\prall[ b)] a8\noBeam^\ltoe b\noBeam^\ltoe a8[( b] a\prall[ g16 a]) 
g8\noBeam g~ g2.
 \bar "|." 
s4 \fixB d
 \bar "|."
}
\addlyrics  { За- рад- ва- ли 
ми са бу- ха- лий- ци, бу- ха- лий- ски- ти 
чор- ба- джа, че зим си и- ди сул- тан- чи, сул- тан- чи, и- мир- лий- ско- то,
сул- тан- чи, ди- ми- ске- ре- то }
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
  opus = "ТД-113,1,13"
  tagline = ##f
}


