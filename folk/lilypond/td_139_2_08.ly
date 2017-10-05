%{
td_139_2_08
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 69
\cadenzaOn
\phrasingSlurDown
\override Glissando #'style = #'zigzag
a4^\rtoe d8[( e]~ \afterGrace e2)\( { \stdB d8\) \stdE } 
\acciaccatura d8 \afterGrace e4^\ltoe\( { \stdB d8\) \stdE }
\acciaccatura d8  \noteFi \afterGrace e4\(\glissando { \stdB c8\) \stdE } c1 r4 \bar ""
d8[( e]~ e2 f16[ e d8]) \acciaccatura d8 \afterGrace e4(\( { d16[ c]\) } d8[ c]) c1 r4
\bar ""
c8 d\noBeam( e2) d16[( e d c] \grace { d8\( } \noteFi e\)[\glissando d16 c]) d[( e]) 
d8(~ \afterGrace d4\( { c16[ b]\) } \noteFi c4)\glissando a8 a\noBeam~ a2 g4 r
\bar ""
c4^\ltoe d8[( e]~ e4 d16[ e \grace { f16[\( e] } d8\)]) d16[( e d c]) d[( e])
d8(~ \afterGrace d4\( { c16[ b]\) } \grace { c16[\( d c] } b4\)) a8 a\noBeam~ a2 a2.
 \bar "|." 
s4 \fixB cis,
  \bar "|." 
}
\addlyrics { Ов- чар Ка- лин- ка за- лю- би, лю- бил я ов- чар, лъ- гал я
го- ди- на и по- ло- ви- на }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 69 4)
		}
	}
}
%
\header{
  opus = "ТД-139,2,8"
  tagline = ##f
}


