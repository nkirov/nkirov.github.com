%{
td_179_2_32
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 84
\cadenzaOn
g8([ a]~ a1~ a8[ g]) g8^\ltoe a8^\rtoe\noBeam(~ a2. \afterGrace g2.\( { \stdB f8\) \stdE } 
g8.[ f16] g8.[ f16]) r4 \bar ""
g8([ a]~ \afterGrace a2.)\( { \stdB g8\) \stdE } g8([ s^\rtoe a]) \bar ""
\acciaccatura { a16[ g f] } \afterGrace g2.(\( { \stdB f8\) \stdE } g8.[ f16]) \bar "" r4^\ltoe
\bar ""
f8([ g]) \bar "" g2(~ g8[ f] \afterGrace f2.\( { ees32[ f ees d]\) } \bar "" 
ees!16\prall[ d c8]) r4 \bar ""
\acciaccatura f8 \afterGrace g2.^\rtoe\( { f16[ ees]\) } f8 \bar ""
g\noBeam(~ \afterGrace g2^\ltoe\( { f16[ ees]\) } \bar ""
\afterGrace f2\( { ees!16[ d]\) } ees!16[ d c8]) r4
\bar ""
\acciaccatura f8 g4. f16[( ees!]) \bar ""
\afterGrace f4.( { ees!16[ d ees] d32[ ees! d ees)] } \bar "" d8 d2. r4 r \bar ""
\acciaccatura f8 \afterGrace g2.(\( { \stdB f8\) \stdE } 
\afterGrace g4)\( { f16[ ees!]\) } f8([ g]) 
g4^\rtoe( f2 ees!16[ d c8]) r4^\ltoe 
g'4. f16[( ees!])  \afterGrace f4.\( { ees!16[ d ees] d32[ ees! d ees\)] } d8 d1
 \bar "|." 
s4 \fixB fis,
 \bar "|."  
}
\addlyrics { Ку- му- вал бе- ше кум Бог- дан, ку- му- вал, пък ни про- ща- вал,
кръ- ща- вал, дреш- ки не да- вал }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 84 4)
		}
	}
}
%
\header{
  opus = "ТД-179,2,32"
  tagline = ##f
}


