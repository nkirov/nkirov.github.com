%{
td_177_1_13
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 8 = 138
\cadenzaOn
g8( a2\fermata bes32[ a g16]) g[( a]) a8( 
\grace { g32[\( a g f] } \afterGrace g2\fermata\)\( { a32[ g f g]\)) } r8
g( a2\fermata bes!32[ a g16]) g[( a]) 
a32([ bes! a16] g32[ a g f] g32[ a g f] \bar "" g32[ a g f] \bar "" e16[ d])
\bar ""
f16[( g]) g2.\fermata r4 f8( g4.\fermata f32[ g a16] \bar ""
\afterGrace a4.\( { bes16[ a\)] } g32[ a g f] g32[ a g f)] f16[( g]) \bar ""
g8\noBeam( \bar "" \grace { f16[\( g f e] } 
\afterGrace f2\fermata\)\( { g16[ f e]\) } \bar ""
d32[ e c16]) r8
\bar ""
f16[( g]~ g4.\fermata a32[ g f e]) f16([ s^\ltoe g]) f8(~ f32[ e c16]) 
d8^\ltoe\noBeam \bar ""
\afterGrace d2.\fermata\( { e16[ d c\)] } r8 \bar "" f4~ f16 g\noBeam \bar ""
g16[( s^\ltoe a] \grace { g16[\( a g f] } \bar "" g2\fermata\) a16[ g f e] 
\bar ""
f4 g32[ f e d e c]) f16[( g]~ \afterGrace g4.\fermata\( { f16[ e]\)) } f16[( s^\ltoe g])
\afterGrace f4.\fermata(\( { g16[ f e]\) } d32[ e c16]) d8^\ltoe d2.\fermata
 \bar "|." 
}
\addlyrics { Сто- ян си ста- до раз- тир- ва край ти- ха бя- ла Ду- на- ва
"с не-" го- ви мед- ни ка- ва- ли }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 138 8)
		}
	}
}
%
\header{
  opus = "ТД-177,1,13"
  tagline = ##f
}


