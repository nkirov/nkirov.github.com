%{
td_095_1_01
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 66
\cadenzaOn
\phrasingSlurDown
c8\noBeam \acciaccatura c8 d(~ d2\fermata 
\afterGrace e8[\( { \stdB f\) \stdE } e16 d]
\afterGrace e8[\( { \stdB f\) \stdE } e32 d c16])
d8[( e] f16[ e] \times 2/3 { f[ e d] } e[ d] \times 2/3 { e[ d c]) } 
\bar ""
d16[( e]) \bar "" d8\noBeam(~ d16[ c32 b] c[ b a16]) a2.\fermata r4 d8([ e])
d32[( e \grace { e16[\( d c] } e8]\) \grace { d16[\( e d] } c4\))
\bar ""
b8([ c] \grace { \stdB d8\( \stdE } c16[\) b] c32[ b a16]) a2. a2\fermata
 \bar "|." 
}
\addlyrics { Бо- ян- ка, кла- ла~й Бо- ян- ка си- дян- ка }
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
  opus = "ТД-95,1,1"
  tagline = ##f
}


