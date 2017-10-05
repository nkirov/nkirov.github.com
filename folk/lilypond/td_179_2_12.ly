%{
td_179_2_12
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 120
\cadenzaOn
\override Glissando #'style = #'zigzag
g4 g8[( a]~ a2.) a( g4) \acciaccatura b8 c4.(\glissando b16[ a]) a1\fermata(
\grace { \stdB bes8\( \stdE } a4\) \times 2/3 { bes!8[ a g] } a4 \times 2/3 { bes!8[ a g] } f1) r4 r
\bar ""
g( a) \bar "" a2.( bes!16[ a g8]) a4( \grace { g32[\( a g f] } 
\afterGrace g2)\)\( { a16[ g f]\) }
f8[( e]) d1\fermata( e16[ d c8]) r4 
\varA
f2\startTextSpan( g4\stopTextSpan) 
\acciaccatura g8 a2( bes!16[ a g8])
\bar ""
a4( \grace { g32[\( a g f] } g2\) \bar "" a16[ g f8]) \bar "" f[( e]) d2.( e16[ d c8]) r4
d8[( s^\ltoe e]) f[( g]~ \afterGrace g2)\( { f16[ e]\) } \times 2/3 { f8[( g f] } 
\times 4/5 { e16[ f e d e]) } 
\bar ""
d1 d 
 \bar "|." 
s4 \fixB b \fixC
  \bar "|." 
 s16 \clef treble
 \varA
s4\startTextSpan f'\stopTextSpan
 \bar "|." 
}
\addlyrics { Я по- мъл- че- те да по- слу- ша- ме глас ми са чу- ва та- тък на- до- лу }
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
  opus = "ТД-179,2,12"
  tagline = ##f
}


