%{
TD_097_2_11
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 176
%\time 5/16
\cadenzaOn
\override Glissando #'style = #'zigzag
 \noteFi e2\glissando a8 a\noBeam a( \afterGrace g1\fermata^↑)\( { e16[ f]\) } d8 e16[( f])
f8 g2.( e16[ f]) \noteFi f[(\glissando e]) d1 r4
\bar ""
g8 \afterGrace g4\( { \stdB f8\) \stdE } f^\rtoe f\noBeam( g4. \noteFi f16[\glissando e] f[ g]) \bar "" f8 e1\fermata r4 \bar ""
d8 e16[( f]) g[( f^↑]) 
\bar ""
\afterGrace g2(\( { \stdB f8\) \stdE } \noteFi e16\glissando[ f]) \acciaccatura { f16[ e] } d2. r4
g8^\rtoe \afterGrace g4\( { \stdB f8\) \stdE } f^\rtoe 
\afterGrace g4.(\( { f16[ e]\) } f[ g]) f8 e1\fermata
 \bar "|." 
s4 \fixB e^↑
  \bar "|."  
}
\addlyrics { Гла- ва ли та бо- ли, Дон- ке ма- ма, гла- ва по- ло- ви- на, 
Дон- ке ма- ма, ма, гла- ва по- ло- ви- на }
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
		\Score
		tempoWholesPerMinute = #(ly:make-moment 176 4)
		}
	}
}
%
\header{
  opus = "ТД-97,2,11"
  tagline = ##f
}


