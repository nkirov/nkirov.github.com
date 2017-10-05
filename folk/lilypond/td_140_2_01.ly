%{
td_140_2_01
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 116
\cadenzaOn
g8([ a~] a1~ a4. g8) g[( a]) a4.( g16[ f] g2. a4. g16[ f] g8.[ f16] g8.[ f16]) r4
g8[( a]~ a1 g4) g8([ a])
\bar ""
a8[( g16 f] \afterGrace g1\( { \stdB f8\) \stdE } g[ f]) \bar "" a8([ g]) \bar ""
a8[( g16 f] g1 g8.[ f16] g8.[ f16] g8[ f16 e]
\parG
f1~ f4 ees16[ d c8]) r4 r8 \ii \parenthesize c8\noBeam
\bar ""
f2 g4 a4.( g16[ f] g8.[ f16] g8.[ f16]) \bar "" 
\acciaccatura f8 g g\noBeam(~ g[ f16 ees] f8.[ e16]) \bar ""
d4^\ltoe d^\rtoe \bar "" d1~( d2. c4) r4^\rtoe a'8( g4.^\rtoe)
\bar ""
g8[( a]) a4.( g16[ f] g8.[ f16] g8.[ f16]) f[( g)] g8\noBeam(~ g[ f16 ees] f8.[ ees16]) 
d8 d\noBeam~ d4 d1~ d
 \bar "|." 
s4 \fixB b
  \bar "|." 
}
\addlyrics { Сто- ян на Рад- ка ду- ма- ше: "(и)" Лю- бе Рад- ке ле, Рад- ке 
"ле,                  (я)" я щъ на- до- "лу  ~  (й)" да и- да }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 116 4)
		}
	}
}
%
\header{
  opus = "ТД-140,2,1"
  tagline = ##f
}


