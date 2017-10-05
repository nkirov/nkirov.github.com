%{
sva_134_2_11
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 138
%%\time 2/4
\cadenzaOn
\phrasingSlurDown
b8([ c]) \afterGrace d2^\ltoe\( { \stdB c8\) \stdE } \times 2/3 { c8( b c] } d1~ d2.
c16[ d c b] c[ d c b] c[ d c b] 
\varA
aes4\startTextSpan) g8\noBeam b16([ c] \afterGrace d4.)\( { \stdB c8\) \stdE }  
c4.( \times 2/3 { c16[ b a]) } g8 r\stopTextSpan 
\bar "" \break
\varB
g16\startTextSpan[( a] b4.\stopTextSpan 
a16[ b a g] a[ b a g]) g1~ g r4 r
\varC
b8\startTextSpan\noBeam b16[( c] b[ c b a\stopTextSpan]) 
a8([ b] a16[ b a g^"↑"] a1 
\bar "" \break
\varD
b2\startTextSpan a16[ b a g^"↑"] a[ b a g]) b8[( c\stopTextSpan]) 
c16([ d c b]~ b4) a8([ b] a16[ b a g] a[ b a g^\rtoe]) g8.\noBeam g16~ g1~ g~ g2
 \bar "|." 
s4 \fixB d \fixC
  \bar "|." 
 \break
\varA
b'8\startTextSpan([ c] d4~ d16[ e d c]) b4.( a8) g\noBeam r\stopTextSpan \bar "||"
\varB
a8\startTextSpan\noBeam b4.\stopTextSpan \bar "||"
\varC
\slurDown
b8\startTextSpan\noBeam c( b\prall[ a\stopTextSpan]) \bar "||"
\varD
s8\startTextSpan( b2 a8 g) r4 b\stopTextSpan
  \bar "|." 
}
\addlyrics { Ма- ма на И- лен- ка ду- ма- ше: Че- до И- лен- ке, И- лен- ке }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 138 4)
		}
	}
}
%
\header{
  opus = "ТД-134,2,11"
  tagline = ##f
}


