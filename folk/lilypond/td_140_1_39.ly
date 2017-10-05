%{
td_140_1_39
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 160
\cadenzaOn
\phrasingSlurDown
\acciaccatura b8 c1~ c4 \acciaccatura c8 d[( c16 b] c8.[ b16] c8.[ c16]) b8.[( aes16] g8[ aes!])
b8[( c]) b[( aes!16 g] aes!8^\rtoe[ g]) f4^\ltoe g8([ s^\ltoe aes!]) g1~ g~ g4 r r
\bar ""
\acciaccatura b8 c1~ c4 d8[( c16 b] c4 b8[ c]) b8.([ aes!16] g8[ aes!]) b[( c]) b^\rtoe[( aes!16 g] aes!8[ g])
f4 g8([ aes! f])
\bar ""
f8.([ e16] f4~ f16[ e c8]) r4 f g8[( aes!]) g^\rtoe[( f]) f([ e]) g[( f16 e] f8^\rtoe[ e]) d4 d4. d1(~ d2 c4) r4
f2^\rtoe g4.( a8)
\bar ""
bes1(~ \afterGrace bes2.\( { aes16[ g\)] } aes!8.[ g16] aes!8[ g16 aes] f4) g8([ aes!)]
g1(~ g8[ f16 e] f8[ e]) d4 d4. d1~ d4
 \bar "|." 
 s4 \fixB a
 \bar "|."  
}
\addlyrics { Сто- ян Ру- сан- ке ду- ма- ше: Лю- бе Ру- са- но~й, Ру- "са-(нъ)" ке,
де- не ми, лю- бе, на- вле- "зи-             (я)" 
ний с'те- "бе                                              (ие)" да сай раз- де- лим }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 160 4)
		}
	}
}
%
\header{
  opus = "ТД-140,1,39"
  tagline = ##f
}


