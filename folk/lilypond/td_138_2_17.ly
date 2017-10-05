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
s4 \fixB b, \fixC
 \bar "|."
\break
 b'8([ c]) d\noBeam d(~ d2.\glissando f4) f8[( ees16\prall d] ees!2. 
f16[ ees! d ees]) d[(\prall^\markup { \flat } 
c b8] c2. \afterGrace d4\( { ees!16[ d]\) } c8) r
\bar ""
d4 d8[( \times 2/3 { c16 b c] } d[ c b8]) b1 r4 g8([ aes!]) b16[( c]) c4. c4^\ltoe 
c2( d16[ c b c]) d8\noBeam d\prall(~ d16[ c b c] d[ c b8])
\bar ""
b2( c16[ b aes! g] f4) r c'8 c\noBeam( d2.) c32([ d16. c16 b] c2 d16[ c b c] 
d[ c b8]) r8
\bar ""
b8\prall[( aes!]) g16[( aes!]) b8\noBeam\prall(~ b[ aes!16 g]) g4 g1 r4 c 
\acciaccatura c8 d2. c32[( d16. c16 b] 
\bar ""
c2 d16[ c b c] d[ c b8]) b8\prall([ aes!]) g16[( aes!]) 
b8\noBeam(~ b[ aes!16 g]) 
\bar ""
g8 g\noBeam~ g2. r4 d' d(\glissando ees!8[ d]) 
\acciaccatura c \afterGrace d2(\( { c16[ b]\) } c2 d16[ c b c] d32[ c b16]) r8
\bar ""
b8\prall[( aes!]) g16([ aes!]) b4^\rtoe( aes!16[ g]) g4 g1~ g4
 \bar "|." 
}
\addlyrics { Де ги- ди Бо- зул вой- во- да! По- съб- рал Бо- зул, по- на- брал
до три- ста мла- ди ю- на- ка, че ги е Бо- зул 
под- во- дил из го- ри и по пла- ни- ни.
" " Хо- ди- ли де- вет ме- се- ца, ни- ка- къв кяр ня- ма- 
ли, на Бо- зу- ла са на- е- ди, той си са- ми- чък о- ста- 
на и из го- ра- та хо- де- ше }
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


