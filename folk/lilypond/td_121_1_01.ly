%{
td_121_1_01
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 69
\cadenzaOn
\phrasingSlurDown
\afterGrace f4.\( { e16[ f]\) } f f\noBeam( g2 aes8) g16[( aes!64 g aes g]
f32[ e f16]~ f[ g32 f g f] ees16[ \grace { \stdB f8\( \stdE } ees32\) d]) \breathe
d2( c16) r
\bar ""
e32[( f g16]~ \afterGrace g4)\( { \stdB aes!8\) \stdE } \afterGrace g8(\( { aes!16[ g]\) }
f32[ e f16]~ \afterGrace f8\( { ees!16[ d]\) } ees!16[ d]) d4. r8
bes'4 \acciaccatura bes!8 \afterGrace c4.\( { d16[ c bes!]\) }
\bar ""
bes!32[( c d16]~ \afterGrace d4\( { \stdB c8\) \stdE } \afterGrace bes!8\noBeam\( { \stdB aes!\) \stdE }
g4 f16) r c'16\noBeam bes!~( bes[ aes!\mordent] bes8.[ aes!16\mordent]) aes!16\noBeam g~ g2 g4. r8
\bar ""
bes!4 \acciaccatura bes!8 \afterGrace c4.\( { \stdB bes!8\) \stdE } bes!32[( c d16]~
\afterGrace d4\( { c16[ bes! c]\) } \afterGrace bes!4\( { \stdB aes!8\) \stdE } g4 f16) r
c' bes!~( bes8.[ aes!16\mordent] bes8.[ aes!16\mordent])
\bar ""
aes16\prall\noBeam g~ g2 g4.
 \bar "|." 
s4 \fixB a
\bar "|." 
}
\addlyrics { За- чу са чу- ма на Бин- дер, на Бин- дер- ски- те ха- но- ви,
на Нон- чо- ви- те о- да- и }
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
  opus = "ТД-121,1,1"
  tagline = ##f
}


