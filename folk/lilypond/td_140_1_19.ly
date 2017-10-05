%{
td_140_1_19
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 104
\cadenzaOn
\acciaccatura g8 a4^"↓" g8.\prall f16\noBeam \acciaccatura g8 a4 
\varA
a2.\startTextSpan( b16[ a g a] \times 2/3 { b16[ a g } f8\stopTextSpan]) 
g[( aes]) 
b8^"↓"( \afterGrace aes!4)\( { g16[ aes]\) } \bar "" g1~ g2 r4
\bar ""
\acciaccatura g8 aes!4 \bar "" g8.\prall f16\noBeam \bar ""
\acciaccatura g8 aes!4 \bar ""
f8( g4 f16[ e]) \bar "" d8 d\noBeam(~ d[ e]) \bar "" f1~ f4 r
\bar ""
g8^\ltoe[( aes!^\rtoe]) \bar "" g8. f16\noBeam \acciaccatura g8 aes!4 f8( g4 f16[ e]) 
f[( g]) d4. d1~ d2
 \bar "|." 
s4 \fixB c \fixC
  \bar "|." 
 s16 \clef treble  
 \varA
a'2.\startTextSpan( bes16[ a g a] \times 2/3 { bes16[ a g } f8\stopTextSpan]) 
 \bar "|." 
}
\addlyrics { Ца- ря на Слав- ка ду- ма- ше: Вик- ни ми, Слав- ке, за- пей ми:
от йед- но гър- ло два гла- са }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 104 4)
		}
	}
}
%
\header{
  opus = "ТД-140,1,19"
  tagline = ##f
}


