%{
td_140_1_31
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 112
\cadenzaOn
\phrasingSlurDown
\par
\ii \parenthesize e4
\acciaccatura b'8 c4 c8[( b]) c16[( d c b] c1 \times 2/3 { d8[ c b] } c8) b\noBeam
\acciaccatura b8 c c\noBeam\mordent( b4) b1( \grace { c16[\( b] } c2^\ltoe\))
\bar ""
\afterGrace b4^\rtoe(\( { \stdB a8\) \stdE } b[ a16 g]) \bar "" g1~ g2 r4 
\ii \parenthesize g4^\ltoe
b a a1(~ 
\afterGrace a2\( { \stdB g8\) \stdE }
\afterGrace a4\( { \stdB g8\) \stdE } a4) g2.
g16[( a]) b8(~ \afterGrace b4\( { \stdB a8\) \stdE } b[ a]) g8 g\noBeam~ g4 g1~ g2.
 \bar "|." 
s4 \fixB c,
  \bar "|." 
}
\addlyrics { е Пиф- на- ло е пи- ле "в къ-" пи- на, 
и не би- ло е пи- ле "в къ-" пи- на }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 112 4)
		}
	}
}
%
\header{
  opus = "ТД-140,1,31"
  tagline = ##f
}


