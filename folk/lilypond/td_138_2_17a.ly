%{
td_138_2_17a
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 104
\cadenzaOn
\override Glissando #'style = #'zigzag
\phrasingSlurDown
b8([ c]) d\noBeam d(~ d1\glissando f4) f8[( ees16\prall d] ees!2. 
f16[ ees! d ees] f[ ees! d8]) \afterGrace d4(\( { c16[ b]\) } c2. d4 c) r
d8 d\noBeam(~ d16[ c b c] d[ c b8])
\bar ""
b1~ b4 r r \bar "" 
g8([ aes]) b16[( c]) c4. \bar "" c8 c\noBeam(~ c2 d16[ c b c]) d8\noBeam
c16([ d] c8[ b]) \bar "" \afterGrace b1(\( { aes!16[ g]\) } f1) r4
\bar ""
c'4 \acciaccatura c8 d2. \bar "" c32[( d16. c16 b^"↓"] c2. d16[ c b^"↓" c] d[ c b8]) r4
b4^\ltoe b16([ c b aes!]) \bar "" \acciaccatura aes! b4(~ b16[ aes! g aes] b[ aes g8])
\bar ""
g4 g1~ g2 r4 \bar "" c \acciaccatura c8 d2. \bar "" c16[( d c\prall b] c2. 
\bar "" d16[ c b c] d[ c b8]) 
r8 \bar "" b4^\rtoe \bar "" b8\prall[( aes!])
\bar ""
\acciaccatura aes! \afterGrace b2.\( { aes!16[ g]\) } \bar "" g4 g1 r4 \bar ""
d' ees( f16[ ees! d ees]
f[ ees! d8]) \bar "" \acciaccatura c8 d4(~ d16[ c b c]~ c2
\bar ""
d16[ c b c] d[ c b8]) r4 \bar "" b8([\prall aes!]) aes!4 b\prall( aes!8[ g]) g8 g\noBeam~ g1~ g2
 \bar "|." 
s4 \fixB b,
 \bar "|." 
}
\addlyrics { Де ги- ди Бо- зул вой- во- да! По- съб- рал Бо- зул, по- на- брал
до три- ста мла- ди ю- на- ка, че ги е Бо- зул 
под- во- дил из го- ри и по пла- ни- ни.
%Хо- ди- ли де- вет ме- се- ца ни- ка- къв кяр ня- ма- 
%ли на Бо- зу- лъ са на- е- ди той си са- ми- чък у- ста- 
%на и из гу- ра- та хо- де- ше 
}
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
  opus = "ТД-138,2,17"
  tagline = ##f
}


