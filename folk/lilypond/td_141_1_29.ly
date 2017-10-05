%{
td_141_1_29
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%\tempo 4 = 144
\cadenzaOn
\phrasingSlurDown
\parS
a8.[\prall(-\parenthesize^\markup { \flat } g16]) 
g1 \times 2/3 { a8[( b g]) } c1( d2~ \time 2/3 { d8[ c b] }
c16.[ b32 c16. b32] g2~ g4) r
\afterGrace c1\( { \stdB b8\) \stdE } \acciaccatura c8 \afterGrace d4(\( { c16[ b]\) }
c16.[ b32 c16. b32])
\bar ""
\par
a8\prall[( g]) g1~ g2 r4 \bar ""
\ii \parenthesize g8 
c8.[( b16]) c[( d c b] c[ b g8])
a8. a16\noBeam~ a1~ a4 fis'2
\bar ""
\ii \parenthesize g,4^\rtoe 
\acciaccatura b8 c4.( b8^\ltoe) c16[( b s^\rtoe c b]) 
a8[(\prall g]) a1~ a2
\bar "|." 
s4 \fixB bes,
\bar "|." 
}
\addlyrics { Я- на брай- на при- гла- ви- ла, "(и)" 
при- гла- ви- ла, и "(а)"  при-  же- ни- ла }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 144 4)
		}
	}
}
%
\header{
  opus = "ТД-141,1,29"
  tagline = ##f
}


