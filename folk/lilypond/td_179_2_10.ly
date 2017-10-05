%{
td_179_2_10
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 120
\override Glissando #'style = #'zigzag
\cadenzaOn
ees4 d8 c\noBeam d[( ees!]) \noteFi \acciaccatura f\glissando \afterGrace g2.(\( { a16[ g f]\) }
g[ a g f]) r4 f8[( g]) g4( f16\prall[ e! f8]~ f2~ f16[ g f e] \times 2/5 { d16[ e f e d]) }
c1\fermata r4 r
\bar ""
c4^\rtoe \acciaccatura e8 f1 f16.^\rtoe[( g32 f16 e] f[ g f e]) r4 
\varA
f4\startTextSpan^\ltoe f16.^\rtoe[( g32 f16 e] f[ g f e\stopTextSpan])
d8 d\noBeam~ d1 d2. r4 r
\bar ""
f4 f^\ltoe( \afterGrace g2.\( { a16[ g]\) } \grace { f32[\( g f e] } f4\) 
\times 2/3 { g8[ f e]) }
c2. r4 f f^\ltoe( g2 a16[ g f8]) f[( g]) \times 2/3 { g8[( a g] } \grace { f32[\( g f e] } f2\) 
g16[ f e8] d16[ e f e] d8[ c]) c1 r4 r
 \bar "|." 
s2 \fixB e4 \fixC
 \bar "|." 
 s16 \clef treble
\varA
f8\startTextSpan[( g]) \afterGrace g4(\( { f32[ g f e]\) } f16[ g f e\stopTextSpan]) \bar "||"
%%
d4 d8[( e]~ e2 fis16[ e d8]) d4 \bar ""
e8[( fis!]~ fis1) \bar ""
fis!8[ g] fis!\prall[ e] fis!16[ g fis8] \bar "" 
\break
e[( d]) \bar ""
e[( fis!]~ \afterGrace fis4)\( { \stdB e8\) \stdE } \bar "" e1( fis!16[ e d8]) r4
\bar ""
e4 e2.( fis!16[ e d8]) e[( fis!]) fis2 g8[( fis-\parenthesize\prall] 
e[ fis]) e8 e\noBeam~ e1 e2
 \bar "|."  
}
\addlyrics { Слън- це- то треп- ти да зай- дье, Ди- ми- тър чи- към за- хва- ща
"с не-" гов'- та си- стра по мал- ка }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 120 4)
		}
	}
}
%
\header{
  opus = "ТД-179,2,10"
  tagline = ##f
}


