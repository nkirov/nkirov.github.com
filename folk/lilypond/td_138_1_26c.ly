%{
td_138_1_26c
%}

\include "td-preamble.ly"

\score {
\relative c' {
%\tempo 4 = 112
\cadenzaOn
c4^\ltoe e8 f\noBeam g[( a]) g1 \breathe g8[( a]~ a4. b8) c[( b] a\prall[ g]) g1 r4
g8[( a]~ a4^\rtoe) a8 b\noBeam c 
\bar ""
f,8(~ f2 b16[ a g a] b[ a g8]) g\prall[( f]) f[( g]) g2. r4
g f8 e\noBeam g a\noBeam(~ a2 g16[ f e8]) g8 d\noBeam~ d2 d1
 \bar "|." 
}
\addlyrics { Ра- но е Рад- ка ра- ни- ла със бе- ли мен- ци за во- да 
от ти- хи, от бял Ду- на- ва, }
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


