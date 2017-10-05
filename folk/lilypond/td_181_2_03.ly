%{
td_181_2_03
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 69
\cadenzaOn
d2 g4^\ltoe g8([ a]~ a2.) \afterGrace a4.\prall\( { bes16[ a g]\) } 
g8([ a] \grace { g32[\( a g fis] } \afterGrace g4\)\( { a16[ g fis!\)] } 
\afterGrace g8\( { a16[ g fis]\) }  \afterGrace g8\( { a16[ g fis]\) } e8\noBeam) r8^\rtoe 
\bar ""
fis!8[( g]) fis\prall([ e])
\bar ""
\times 2/3 { fis!16([ g fis] } e\prall[ d] e1~ \afterGrace e8\noBeam\( { fis16[ e d\)] } e8\noBeam\( { fis16[ e d\)] }
e8\noBeam\( { fis16[ e d\)] } e16[ \times 2/3 { f32 e d] } c8\noBeam) r8^\rtoe 
\bar ""
d2 fis8([ s^\ltoe g]) 
g([ a] \grace { g32[\( a g fis!] } g2\) \grace { a16[\( g fis!] } g8\) \grace { a16[\( g fis] } g8\) 
\grace { a16[\( g ] } fis8\)) r8
\bar ""
fis!8([ s^\ltoe e]) e([ fis!] fis[ e16 d] e8\prall[ d]) d8\noBeam^\ltoe d^\ltoe d1 r4
\bar ""
r16 e\noBeam fis![( g]) fis8\prall[( e16 d] \afterGrace e2.\( { d8\) } e16\prall[ d] e16\prall[ d] e16\prall[ d]) r8
\bar ""
\acciaccatura g8 a4 \afterGrace a2(\( { bes32[ a g fis!]\) } \afterGrace g4\( { a16[ g fis!]\) }
\afterGrace g4\( { a16[ g fis!]\) } \afterGrace g4\( { a16[ g fis]\) } e8) r8
\bar ""
fis!4(~ fis8[ e16 d] e[fis s^\ltoe e d]) d8\noBeam d~ d1\fermata r4
\bar ""
fis!8([ g]) fis!16([ g fis e]) fis!8([ e32 fis e d] \afterGrace e2.\( { fis!16[ e d]\) } e32[ fis! e d] e32[ fis e d]) r4
\bar ""
a'16([ bes! a^\ltoe g]) g8([ a]~ \afterGrace a4\( { g16[ fis!]\) } \afterGrace g2\( { a16[ g fis!]\) } \afterGrace g8\( { a16[ g fis]\) } 
g8[ \times 2/3 { a32 g fis!] } e8) r8
\bar ""
e8([ fis!]~ \afterGrace fis2\( { g32[ fis! e d]\) } e16[ fis! e d]) d8\noBeam^\ltoe d^\rtoe~ d1\fermata
 \bar "|." 
 s4 \fixB d
 \bar "|." 
}
\addlyrics { Ха- джи- я ду- ма ма- ма си, ха- джи- я, Ха- джи Ди- ми- тър:
Ни мо- га ве- ке да тър- па кат гле- дам, ма- мо, тур- ци- те }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 69 4)
		}
	}
}
%
\header{
  opus = "ТД-181,2,3"
  tagline = ##f
}


