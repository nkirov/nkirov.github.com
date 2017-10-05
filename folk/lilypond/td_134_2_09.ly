%{
sva_134_2_09
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 112
%%\time 2/4
\cadenzaOn
\phrasingSlurDown
g8^"I"([ aes]) \acciaccatura b8 c1( d8\mordent[ c16 b] c[ d c b]) b[( c b a!])
\acciaccatura a8 \afterGrace b2\( { a16[ g]\) } g2~ g8 r b\noBeam c( b4. a!8)
\slurDown b1( a!8\prall[ gis] a\prall[ gis] f!1) r4 r \slurNeutral
\bar "" 
g8([ aes]) \acciaccatura b8 c1( d8\mordent[ c16 b] c[ d c b]) b8\noBeam aes!
\acciaccatura aes!8 g4.( aes!8) c16.([ d32 c16 b] c8\prall[ b16 aes!]) aes!8 
g4. g1~ g~ g2 
\bar "||" \break
g8^"II"[( aes!]) \acciaccatura b8 \afterGrace c1\(( { \stdB b8\) \stdE } c16[ d c b]) 
b8\prall([ aes!])  \acciaccatura aes!8 \slurDown b2( c16[ b aes!^"↑" g]) g4. r8 \slurNeutral
b8([ c]) b\prall[( a!])  \slurDown b1( a8\prall[ gis] a\prall[ gis] f!1) r4 r \slurNeutral
\bar "" 
g8([ aes]) \acciaccatura b8 c2( d16[ c b c] d[ c b8]) b8^\ltoe\noBeam aes!^\ltoe 
b8[( aes!] aes\prall[ g16 aes]) \acciaccatura b8 c16[( d c b] c8\prall[ b16 aes!])
aes!8 ges4. ges1~ ges~ ges2
 \bar "|." 
 s4 \fixB d \fixC
  \bar "|." \break
 g8([ aes]) \acciaccatura b8 \afterGrace c2.(\( { b16[ c]\) } d16[ c b8]) b([ aes!]) 
  aes\prall([ g]~ g[ aes!]) \acciaccatura b8 c([ b16 c] d[ c b aes!]) b8([ aes!]) g2 g1~ g~ g2
  \bar "|." 
}
\addlyrics { Я из- грей, слън- чо, я из- грей 
във мом- ко- ви рав- ни дво- ро- ве!
Дор две са слън- ца из- гре- ле във мо- ми- ни рав- ни дво- ро- ве " "
Най- дох я, ма- мо, най- дох я }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 112 4)
		}
	}
}
%
\header{
  opus = "ТД-134,2,9"
  tagline = ##f
}


