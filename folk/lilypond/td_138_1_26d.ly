%{
td_138_1_26d
%}

\include "td-preamble.ly"

\score {
\relative c' {
%\tempo 4 = 112
\cadenzaOn
c4 e8 f\noBeam g[( a]) g1 \breathe g8[( a]~ a4. b8) c[( b] a\prall[ g]) g1 r4
g4^\rtoe f8 e\noBeam g f\noBeam(~ f2 g16[ f e8])
\bar ""
g8\noBeam d~ d2 d1 r4
g f8 e\noBeam g f\noBeam(~ f2 g16[ f e8]) g8 d\noBeam~ d2 d1
 \bar "|." 
}
\addlyrics { слън- це- то да я не ви- ди, слън- це- то, о- ще ме- се- ца
и на не- бо- то звез- ди- те }
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
%  opus = "ТД-138,1,26"
  tagline = ##f
}


