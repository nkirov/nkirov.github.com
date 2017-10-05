%{
td_095_2_01
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 8 = 152
\cadenzaOn
\phrasingSlurDown
a4 e'8 d\noBeam \acciaccatura d e4 e16[( d] c4) d8 e4 e16[( d e d] c4) \breathe
d8 e\noBeam c c\noBeam
\bar ""
c16[( b] \grace { c16[\( b a] } b8\)) \bar "" a\noBeam a a2 r4 r a16[( b])
\acciaccatura c8 d[( \times 2/3 { e16 d c]) } c16[( d] c32[ d c b] 
c16\prall[ b] \afterGrace a2)\( { \stdB b8\) \stdE }
\bar ""
d8 c\noBeam c16[( b] \grace { c16[\( b a] } b8\)) a\noBeam a2\fermata
 \bar "|." 
}
\addlyrics { Ма- ма Ди- ми- тър ду- ма- ше: Син- ко Ди- ми- тре, Ди- мит- ре,
я пи- тай, син- ко, бул- ка- та }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 152 8)
		}
	}
}
%
\header{
  opus = "ТД-95,2,1"
  tagline = ##f
}


