%{
td_138_1_26
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 112
\cadenzaOn
c4 e8 f\noBeam g[( a^\ltoe]) g1 g8[( a]~ a4. b8) c[( b] a\prall[ g]) g1 r4
g8[( a]~ a4^\rtoe) a8 b\noBeam c4^\ltoe
\bar ""
a2( b16[ a g a] b[ a g8]) g\prall[( f]) f[( g]) g2. r4 g4^\ltoe f8 e\noBeam g 
f\noBeam(~ f2 g16[ f e8]) g d\noBeam~ d2 d1
 \bar "|." 
s4 \fixB c \fixC
 \bar "|."  
\break
c4 e8 f\noBeam g[( a]) g1 \breathe g8[( a]~ a4.^\rtoe b8) c[( b] a\prall[ g]) g1 r4
g8 f\noBeam e\noBeam 
\bar ""
g f\noBeam(~ f2 g16[ f e8]) g8 d\noBeam~ d2 d1
 \bar "|." 
\break
c4^\ltoe e8 f\noBeam g[( a]) g1 \breathe g8[( a]~ a4. b8) c[( b] a\prall[ g]) g1 r4
g8[( a]~ a4^\rtoe) a8 b\noBeam c 
\bar ""
f,8(~ f2 b16[ a g a] b[ a g8]) g\prall[( f]) f[( g]) g2. r4
g f8 e\noBeam g a\noBeam(~ a2 g16[ f e8]) g8 d\noBeam~ d2 d1
 \bar "|." 
\break
c4 e8 f\noBeam g[( a]) g1 \breathe g8[( a]~ a4. b8) c[( b] a\prall[ g]) g1 r4
g4^\rtoe f8 e\noBeam g f\noBeam(~ f2 g16[ f e8])
\bar ""
g8\noBeam d~ d2 d1 r4
g f8 e\noBeam g f\noBeam(~ f2 g16[ f e8]) g8 d\noBeam~ d2 d1
 \bar "|."
}
\addlyrics { Ра- но е Рад- ка ра- ни- ла, ра- нин- ко, Рад- ка, по- сред нощ, 
пет- ли не бя- ха по- пе- ли 
" " пет- ли не бя- ха по- пе- ли, по- пе- ли и по- вто- ри- ли 
 Ра- но е Рад- ка ра- ни- ла със бе- ли мен- ци за во- да 
от ти- хи, от бял Ду- на- ва, 
слън- це- то да я не ви- ди, слън- це- то, о- ще ме- се- ца
и на не- бо- то звез- ди- те }

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
  opus = "ТД-138,1,26"
  tagline = ##f
}


