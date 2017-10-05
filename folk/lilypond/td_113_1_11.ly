%{
sva_113_1_11
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 69
%%\time 2/4
\cadenzaOn
\phrasingSlurDown
g16[( aes^"↑"]) b8~ b2. b16([ c]) c8\noBeam~( c[ b] 
\times 2/3 { aes16[ g aes] } \times 2/3 { b[ aes g]) } \afterGrace g1( { \stdB f8) \stdE } 
g16[( aes!]) b([ c^\rtoe] b8[ a16 c]) b2(~ b8[ aes16 g] \grace { \stdB b8\( \stdE } c2.)\) r4
 \bar ""
\override Glissando #'style = #'zigzag 
g16[( aes!)] b8( b4) d16[( c]) \noteFi c16([\glissando \noteFi d]\glissando c16[ b a!8]~ a4)
b16[( c d8] 
\varA
c16\startTextSpan\prall[ b c8\stopTextSpan]) 
b8\prall[( \grace { aes!16[\( b a g] } a8^\rtoe])\) g4 g2. r4
 \bar ""
 b8[( aes!16 g]) \afterGrace g2( { \stdB f8) \stdE } g16[( aes!]) b8(~ b4. a!8) 
\acciaccatura b8 c4(~ c16[ b32 c] d[ c b16])  
b8\prall[( \grace { aes!16[\( b a g] } a8]\)) g8\noBeam g~ g1
 \bar "|." 
 s4 \fixB d \fixC
\bar "|." 
s16 \clef treble
\varA
c'16\startTextSpan\prall[ b \afterGrace c8]\( { d16[ c\stopTextSpan]\) }
\bar "|." 
}
\addlyrics { Ма- ма на Мин- ча про- ду- ма:
Мин- чо льо, и- дин на ма- ма, я из- лез, Мин- чо, на-  вън- ка }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 69 4)
		}
	}
}
%
\header{
  opus = "ТД-113,1,11"
  tagline = ##f
}


