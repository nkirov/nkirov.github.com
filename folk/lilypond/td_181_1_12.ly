%{
td_181_1_12
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 88
\cadenzaOn
c2 d8[( e]) f4 g16[( s^\ltoe aes]) g[( s^\ltoe f]) g8[( f32 g f e] f1 
\varA
\grace { g16\startTextSpan[\( f] } g4.^\rtoe\) f8\stopTextSpan)
\varB
\afterGrace f4\startTextSpan(\( { g16[ f ees!]\) } 
\afterGrace d4\( { f16[ ees! d]\) } c4\stopTextSpan^\ltoe)
\bar ""
c1 r4 \bar "" c2 d8[( e]) \bar "" f16[( g f e]) \bar ""
\varC
f8\startTextSpan g\noBeam~ \afterGrace g4\( { \stdB e8\) \stdE } 
f[( \afterGrace ees])\( { d16[ ees\stopTextSpan]\) } 
d4 d1\fermata
 \bar "|." 
s4 \fixB d \fixC
 \bar "|." 
 s16 \clef treble
 \varA
 g4.\startTextSpan( \times 2/3 { a16[ g f\stopTextSpan]) } \bar "||"
 \varB
 f8\startTextSpan[\prall( ees!]) d[( c\stopTextSpan]) \bar "||"
 \varC
 f8\startTextSpan g\noBeam \times 2/3 { f16[( g f] } \grace { ees!16[\( f ees] } d8\stopTextSpan\))  
 \bar "|."  
}
\addlyrics { И- ван на Ра- да ду- ма- ше: Ра- до мо, лю- бе Ра- до мо }
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
  opus = "ТД-181,1,12"
  tagline = ##f
}


