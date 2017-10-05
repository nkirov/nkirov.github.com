%{
td_134_2_15
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 120
\cadenzaOn
\phrasingSlurDown
\ii e8 
a4 
\varA
a1\startTextSpan~ a4\stopTextSpan 
a16[( b a\prall g^"↑"] a[ b a g]~ g4) g8[( a]) 
\varB
a4.\startTextSpan( b16[ a] \times 2/3 { gis8[ a b)] } g4 
g2(~ g8[ f16\prall e] f[ g f e]) e1(~ e4 f8\mordent[ e16 d\stopTextSpan])
r4 r
\bar ""
g8[( e]) 
\varC
\afterGrace fis2.\startTextSpan\( { \stdB g8\) \stdE } 
\parS
\acciaccatura g8 \afterGrace a4(\( { b16[ a g-\parenthesize^"↑" a]\) } 
b16[ a g8-\parenthesize^"↑"]~ g4\stopTextSpan)
%%
g8-\parenthesize^"↑"[( a]) b16[( a g a] b[ a16 g]~ 
\afterGrace g4)\( { a16[ g fis!\)] }
\varD
fis!4\startTextSpan^\ltoe e2\stopTextSpan 
e1~ e
 \bar "|." 
s4 \fixB d \fixC
 \bar "|." 
 s16 \clef treble
\varA
s4\startTextSpan a'4.\stopTextSpan  \bar "||"
\varB
g16\startTextSpan[( a g a]~ a2) g8 a\noBeam( \grace { \stdB a\( \stdE } g2\) 
fis!16[ g fis e]) e1(~ e4 fis!16\mordent[ e d8\stopTextSpan]) \bar "||"
\varC
fis!2\startTextSpan \acciaccatura g8 a4( b16[ a g8]~ g4\stopTextSpan) \bar "||"
\varD
fis!8\startTextSpan e\noBeam~ e2\stopTextSpan 
 \bar "|."  
}
\addlyrics { и Ра- де вай- во- да ду- ма- ше: Лю- бе вай- во- до, вай- во- до }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 120 4)
		}
	}
}
%
\header{
  opus = "ТД-134,2,15"
  tagline = ##f
}


