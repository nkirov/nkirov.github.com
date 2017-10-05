%{
td_121_1_09
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 72
\cadenzaOn
\phrasingSlurDown
g8\noBeam a16[( b]) c1 \acciaccatura c8 d d\noBeam( e16[ d c b] 
\afterGrace c2.\( { \stdB d8\) \stdE } \afterGrace e2.\( { d16[ c]\) } \afterGrace d4\( { \stdB e8\) \stdE} 
d16[ c]) \breathe
c8 b\noBeam(~ b4. a16[ g])
\bar ""
\acciaccatura b8 c2( d4. c16[ d] \afterGrace e8[\( { \stdB d\) \stdE } c16 d]) c16\noBeam 
\afterGrace c8.\( { \stdB b8\) \stdE }
b r d8 c32[( b a b] 
\afterGrace c4\( { \stdB d8\) \stdE } c16[ bes^"↑" a bes]) bes!8 a\noBeam~( 
\afterGrace a2\( { \stdB bes!8\) \stdE }
a16[ g]) r8 r4
\bar ""
a16( b8.\noBeam~ b4 d4. e32[ d c d] \afterGrace e8[\( { \stdB d8\) \stdE } c16 d]) c16\noBeam 
\override Glissando #'style = #'zigzag
\noteFi c8\prall\glissando( b16) b8\noBeam r 
\varA
d8\startTextSpan c32[( b a b\stopTextSpan] \bar ""
\afterGrace c4\( { \stdB d8\) \stdE } c16[ bes!^"↑" a bes])
\bar ""
bes!8 a~\noBeam a2. a2
\bar "|."
s4 \fixB fis! \fixC
\bar "|."
\varA
d'16\startTextSpan c32[ b a16 b\stopTextSpan] 
\bar "|."
}
\addlyrics { Че ста- на Ха- джи Ди- ми- тър, сред нощ на Рус- чук о- ти- де, на
Рус- чук- ски- те зан- да- ни }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 72 4)
		}
	}
}
%
\header{
  opus = "ТД-121,1,9"
  tagline = ##f
}


