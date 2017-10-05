%{
td_139_2_10
%}

\include "td-preamble.ly"
\include "makam.ly"

\score {
\relative c' {
\tempo 4 = 126
\cadenzaOn
\acciaccatura fb8 g4 a1(~ a8[ b]) c4 
\varA
c16\startTextSpan[( b\stopTextSpan] 
\afterGrace a2.\( { bfk16[ a g]\) }
a8\prall^\markup { \flat } [ g]) g[( a]~ a1) r4 
a8[( g]) g1( a16[ g f8]) g[( a]~ a1) r4
\bar ""
f4 g1( afk16[ g f8]) g[( a]~ a2 bfk!16[ a g8]) r4 
g8.^\rtoe[( f16]) g8[( afk])
g4(~ g8[ f16 efb] f8.[ efb!16]) d8 d\noBeam~ d1~ d4 c r
\bar ""
f4 g1( f4) g8[( a]~ a2 g16[ a] \times 2/3 { bfk!16[ a g] } f4)
g8[( a]) \afterGrace g2.(\( { f16[ efb!]\) } f8\prall[ efb!]) d4^\ltoe d1~ d4 d1
 \bar "|." 
s4 \fixB c \fixC
  \bar "|." 
 s16 \clef treble
  \varA
c'16\startTextSpan[ b a bfk!\stopTextSpan] 
  \bar "|." 
}
\addlyrics { Йел- ка мо- ма- ре дой- да- ха, та че ги май- ка и по- срещ- на 
и на мо- ма- ре ду- ма- ла }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 126 4)
		}
	}
}
%
\header{
  opus = "ТД-139,2,10"
  tagline = ##f
}


