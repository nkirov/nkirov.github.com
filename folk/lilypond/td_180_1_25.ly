%{
td_180_1_25
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 92
\cadenzaOn
c16.[( d32 c16 b] c[ d c b]) a4 a2. c8.[( \times 2/3 { d16 c b] } c[ d c b]) a2 
\varA
\afterGrace a4\startTextSpan(\( { bes16[ a g]\) } a\prall[ g a8] bes!16[ a g a] bes[ a g f\stopTextSpan]) 
\bar "" g4( f8[ e]) \bar "" f2. r4 \bar "" f8 \bar "" g8\noBeam( a2 g4) 
a8([ g32 a g f] g4 f8) r8
\bar ""
g8([ a]~ a[ g]) \bar "" f8.([ g16] f8[ e]) \bar "" f([ g] f16[ e d e]) d8\noBeam \bar ""
d~( d2 c8) r^\rtoe f([ g])
\bar ""
g4^\ltoe g16.([ a32 g16 f] \times 4/5 { g[ a g f e^\rtoe)] } g\noBeam \bar ""
f[( g f] \times 4/5 { e[ f e d e]) } \bar "" d8 \bar "" d\noBeam~ d2 \bar "" d8([ c]) r4
\bar ""
f8\noBeam g( a4~ a8[ g]) a8[( g32 a g f] g4 f8) r8 \bar ""
g8([ a]~ a[ g]) f8.([ g16] f8[ s^\ltoe e]) f([ g] f16[ e d e]) d4 d2.\fermata
 \bar "|." 
s4 \fixB b \fixC
 \bar "|." 
s16 \clef treble
\varA
\afterGrace a'4\startTextSpan(\( { bes!16[ a bes a]\) } bes!16[ a g a] bes[ a g f\stopTextSpan]) 
 \bar "|." 
}

\addlyrics { Сед- нал е Ди- ман чор- ба- джи да я- де Ди- ман, да пи- е
"с не-" го- ви си- на дор де- вят, "с не-" го- ви сна- хи дор о- сям }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 92 4)
		}
	}
}
%
\header{
  opus = "ТД-180,1,25"
  tagline = ##f
}


