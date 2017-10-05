%{
td_138_1_26b
%}

\include "td-preamble.ly"

\score {
\relative c' {
%\tempo 4 = 112
\cadenzaOn
c4 e8 f\noBeam g[( a]) g1 \breathe g8[( a]~ a4.^\rtoe b8) c[( b] a\prall[ g]) g1 r4
g8 f\noBeam e\noBeam 
\bar ""
g f\noBeam(~ f2 g16[ f e8]) g8 d\noBeam~ d2 d1
 \bar "|." 
}
\addlyrics { %%Ра- но е Рад- ка ра- ни- ла, ра- нин- ко, Рад- ка по сред нощ, 
%%пет- ли не бя- ха про- пе- ли 
пет- ли не бя- ха по- пе- ли, по- пе- ли и по- вто- ри- ли }
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


