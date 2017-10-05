%{
td_180_1_24
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 88
\cadenzaOn
\parS
g8[( a]) a1( bes16[ a g a] bes32[ a g a] bes[ a g16]) 
g8-\parenthesize\prall[( f]) g[( a]) 
a1( bes!32[ a g a a8] bes32[ a g a] bes[ a g a ] \times 2/3 { bes16[ a g } f8)]
\bar ""
g8[( a]) \bar "" a[( s^\ltoe g]) \bar "" 
\afterGrace g2(\( { f16[ e]\) } f32[ g f e] f[ g f e] d16[ c])
r8 \bar "" g' a\noBeam(~ a2 bes!32[ a g a] bes[ a g16])
\bar ""
g8[( f]) g4 \bar "" a16[( g8.]~ \afterGrace g4\( { f16[ e]\) } 
f32[ g f e] f[ g f e]
f[ g f e d c]) r16^\rtoe \bar "" d8 d\noBeam d1( c8) r
\bar ""
g'8[( a]) \bar "" a2( bes!32[ a g a] bes[ a g a]) g8\prall[( f]) g4^\ltoe 
 \afterGrace g2(\( { f16[ e]\) } f32[ g f e] f[ g f e] d16[ c]) r8
 \bar ""
 d8. d16\noBeam d1
 \bar "|." 
s4 \fixB d 
  \bar "|." 
}
\addlyrics { Ма- ра за во- да хо- дя- ла на Ка- ра- джов- ски кла- дян- ци,
хо- дя- ла и са вър- на- ла }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 88 4)
		}
	}
}
%
\header{
  opus = "ТД-180,1,24"
  tagline = ##f
}


