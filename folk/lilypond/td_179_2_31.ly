%{
td_179_2_31
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 108
\cadenzaOn
g8([ a]~ a2~ a8) g\noBeam a( g32[ a g f] g8\noBeam a32[ g f16]) r4
\acciaccatura g8 a4~ a8. g16\noBeam \bar ""
\acciaccatura { a16[ g f] } \afterGrace g2.\( { f16[ e]\) } f[( g]) \bar ""
g8\prall\noBeam( \afterGrace f2.\( { \stdB g8\) \stdE } f16[ e d c]) r4^\rtoe
\bar ""
\acciaccatura { a'16[ g f] } g2(~ g8[ f16 e]) f8 \bar ""
g8\prall\noBeam( \afterGrace f2\( { \stdB g8\) \stdE } f16[ e d c]) r4 \bar ""
\afterGrace f2\(( { e16[ f]\) } g4.) g8 f32[( e d16]) \bar ""
d8^\ltoe d\noBeam~^\rtoe d1\fermata r4
\bar ""
\acciaccatura { a'16[ g f] } \slurUp \afterGrace g4\(( { f16[ e]\) } \slurNeutral \bar ""
\afterGrace g2)\( { f16[ e\)] } f8^\ltoe f16([ s^\rtoe g] \bar ""
\afterGrace f2\( { \stdB e8\) \stdE } d16[ e c]) \bar ""
r8 r4 \bar ""
\acciaccatura e8 \afterGrace f4(\( { \stdB g8\) \stdE } f16[ e f g]) 
f[( s^\ltoe g]) 
\acciaccatura { f16[ e] } d8^\rtoe d\noBeam^\ltoe d~^\rtoe d1\fermata
 \bar "|." 
s4 \fixB b
  \bar "|." 
}
\addlyrics { Ку- му- вал бе- ши кум Бог- дан, ку- му- вал, пък ни пру- ща- вал,
пру- ща- вал, пък ни кръ- ща- вал }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 108 4)
		}
	}
}
%
\header{
  opus = "ТД-179,2,31"
  tagline = ##f
}


