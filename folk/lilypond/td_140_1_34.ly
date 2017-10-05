%{
td_140_1_34
%}

\include "td-preamble.ly"
\include "makam.ly"

\score {
\relative c'' {
\tempo 4 = 104
\cadenzaOn
\phrasingSlurDown
\par
\ii \parenthesize g4
\acciaccatura b8 c4 c8[( d]~ d1~ d8[ c]) d[( efk]) 
\afterGrace d4(\( { c16[ b^↓]\) } c8.[ bfk16]) 
\afterGrace a1\( { \stdB b8\) \stdE }
c1~ c4 c c16[( d c b] c1) r4 r8
\bar ""
\ii \parenthesize g8\noBeam
c4 c8[( d]~ d1~ d8[ c]) d[( efk!]) d[( c b]) c16[( d c b] c8[ bfb]) a4
\bar ""
a1~ a4 a1~ a2
 \bar "|." 
 s4 \fixB cb,
 \bar "|." 
}
\addlyrics { е Да зна- йеш, ма- мо, да зна- йеш 
и кол- ко йов- ча- ре сля- за- ха }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 104 4)
		}
	}
}
%
\header{
  opus = "ТД-140,1,34"
  tagline = ##f
}


