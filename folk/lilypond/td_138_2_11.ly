%{
td_138_2_11
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 144
\cadenzaOn
\override Glissando #'style = #'zigzag
g4 g2 \acciaccatura b8 c4(~ c1 d16[ c b c] d[ c b8]~ b4) c\mordent 
\acciaccatura c8 d2. c4 \acciaccatura c8 d4( c8[ b16 c] d[ c b8]) aes4 b1~ b2
\bar ""
c4 c( d16[ c b c] d[ c b8]~ b4~ b16[ aes!^"↑" g aes] b[ aes!^"↑" g8]) 
g2.( aes!8^"↑") r
b[( c] d16[ c b8]) aes!4 b2^\ltoe aes!8[( g]) g2
\bar ""
g1~ g2 r4 c2.( d16[ c b8]) b4\prall(~ b16[ aes! g aes] b[ aes! g8]) 
g2( aes!4^"↑") r
b^\rtoe aes!8[( b]~ b[ \grace { c16[\( b] } aes!8\)]) aes![( g]) g1 g~ g2
\bar ""
g4 g2 \acciaccatura b8 c4(~ c1 d16[ c b c] d[ c b8]~ b4) c\mordent
\acciaccatura c8 d2. c4 \acciaccatura c8 d4(~ d16[ c b c] d[ c b8]) 
aes!4 b1~ b4 r
\bar ""
\acciaccatura b8 \afterGrace c1\( { b8\) } 
b4\prall(~ b16[ aes! g aes] b[ aes! g8]) g2.( aes!8) r b[( c]) b4\prall( aes!)
g8[( f]) g2. g1~ g4 r \acciaccatura b8 c2.
\bar ""
\varA
b4\startTextSpan\prall(~ b16[ aes! g aes] 
\noteF b[\glissando \noteF aes!\glissando g8\stopTextSpan])
g2.( aes!8) r^\rtoe b[( c]) b8.[( c16] b8[ aes!]) aes!4 g2. g1~ g2
 \bar "|." 
s4 \fixB cis, \fixC
  \bar "|." 
s16 \clef treble
\varA
b'4.\startTextSpan\trill(  aes!8 g4\stopTextSpan)
 \bar "|." 
}
\addlyrics { Ка- ра- гьоз Пет- ро льо, ни- вя- сто, ти и- ди ка- жи на ле- ля
си, на ле- ля- си, по- мал- ка- та, ти и- ди ка- жи на ле- ля
си, на ле- ля- си, по- мал- ка- та, мил- нин- куш да ма по- глед- ни }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 144 4)
		}
	}
}
%
\header{
  opus = "ТД-138,2,11"
  tagline = ##f
}


