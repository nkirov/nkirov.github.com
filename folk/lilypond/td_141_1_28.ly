%{
td_141_1_28
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%\tempo 4 = 144
\cadenzaOn
\phrasingSlurDown
a4 d16[( c d8]) \acciaccatura { d16[ c b] } c2.(~ c8[ \grace { d16[\( c] } b8\)]
c16[ b a8]) b b\noBeam~ b1~ b4 r \acciaccatura c8 d4.( c16[ b] c4)
\bar ""
\parG
c8\prall( \grace { c16[\( b a] } b4\)) b8~ b1 r8. 
\ii \parenthesize g16 
\bar ""
a4.( b16[ g]) c8.[( b16] c[ b s^\ltoe c b]) a1\prall r8. 
\ii \parenthesize g16
\bar ""
c8 \acciaccatura c \afterGrace d(\( { c16[ b]\) } c16.[ b32 d8])
a\noBeam a\noBeam~ a1( g4) a2. f'2^"↓" \parenthesize e
 \bar "|." 
s4 \fixB bes,
 \bar "|."  
}
\addlyrics { Слън- це- то треп- ти, за- хож- да, "(и)" 
Ян- ку- ла "(и)" ко- ня сед- ла- йе, и }
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
  opus = "ТД-141,1,28"
  tagline = ##f
}


