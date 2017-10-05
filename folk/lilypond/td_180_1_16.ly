%{
td_180_1_16
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 100
\cadenzaOn
e8[( s^\ltoe f]) \time 2/3 { g8\prall[( f e]) } e2( f16[ e d8^\ltoe]) 
e[( s^\ltoe f]) 
f[( g]~ 
\varA
\afterGrace g2\startTextSpan\( { f16[ e\stopTextSpan]\) } 
f^\ltoe[ e^\rtoe d8]) e16[( f])
\bar ""
\afterGrace g8(\( { f16[ e]\) } f8\prall[ e]) e1 r4^\rtoe \bar ""
e8[( s^\ltoe f]) \bar ""
f[( g]~ 
\varB
\afterGrace g4\startTextSpan^\ltoe)\( { f16[ e\stopTextSpan]\) } \bar ""
\afterGrace f8[(\( { \stdB g\) \stdE } f16 e]) f8
\bar ""
\afterGrace g8(\( { a16[ g]\) } f16[ e f8]) f16[( g s^\ltoe f e]) d8 d\noBeam~ d1 
 \bar "|." 
s4 \fixB b \fixC
 \bar "|." 
 s16 \clef treble
 \varA
\afterGrace g'2\startTextSpan\( { a16[ g f e\stopTextSpan]\) } \bar "||"
\varB
\afterGrace g4\startTextSpan^\ltoe\( { a16[ g f e\stopTextSpan]\) } 
 \bar "|."  
}
\addlyrics { Слън- це- то треп- ти, зай- де- ва, Ди- ми- тър че- към за- хва- ща }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 100 4)
		}
	}
}
%
\header{
  opus = "ТД-180,1,16"
  tagline = ##f
}


