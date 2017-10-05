%{
td_096_1_16
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 8 = 120
\cadenzaOn
\phrasingSlurDown
a8 a\noBeam^\rtoe a16[( b]~ b4. c32[ b a b] \afterGrace c4.\( { d16[ c]\) } b4
c32[ b a g] \grace { a16[\( b a] } g2.)\) r4
\bar ""
\acciaccatura g8 a \bar "" a16[( b]~ \afterGrace b2\( { a16[ b]\) } c4 \bar "" d16[ c] 
\afterGrace b4\( { a16[ g]\) } a\prall[ g]) a8\noBeam \bar ""
\varA
a16\startTextSpan[( b]~ \afterGrace b4\( { c16[ b]\) } a\prall[ g\stopTextSpan]) \bar ""
g1 r4
\bar ""
g16[( a]) a\noBeam \bar "" a( b2 \grace { c16[\( b] } a\)[ b] \bar ""
\afterGrace c4\( { d16[ c]\) }
\afterGrace b4\( { a16[ g]\) } a16\prall[ g]) \bar "" \acciaccatura g8 a16 
\varB
a\startTextSpan\noBeam( b4 a32[ g] a16\prall[ g\stopTextSpan])
\bar ""
a16 a\noBeam( \afterGrace b8\( { a16[ g]\) } a[\prall g]) \bar "" 
\varC
g16.\startTextSpan[( f32\stopTextSpan] 
e2~ e8[ d]) r4 \bar ""
a'8\noBeam a16[( b]~ \afterGrace b8\noBeam\( { a16[ g]\) } a8^\rtoe\noBeam)
\bar ""
g16[( \grace { a[\( g] } f]\) e32[ f16.]) \bar "" e32[( d g16]) \bar ""
\acciaccatura f8 g\noBeam( \grace { \stdB a8\( \stdE } g32[\) f e f]) \bar "" d16 e\noBeam~ e4. e1
\bar "|." 
s4 \fixB cis \fixC
\bar "|." 
 s16 \clef treble
\varA
a'16\startTextSpan[( b]~ \afterGrace b4\( { c16[ b a g]\) } a\prall[ g\stopTextSpan]) \bar "||" 
\varB
a\startTextSpan\noBeam( b4 c32[ b a g] a16\prall[ g\stopTextSpan]) \bar "||"
\varC
g16\startTextSpan[ a32 g f\stopTextSpan] 
\bar "|." 
}
\addlyrics { На Ген- да го- сти дой- до- ха не- го- ви де- вят ку- мич- ки,
на го- сти и на по- врат- ки }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 120 8)
		}
	}
}
%
\header{
  opus = "ТД-96,1,16"
  tagline = ##f
}


