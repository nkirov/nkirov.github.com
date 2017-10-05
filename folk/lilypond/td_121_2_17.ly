%{
td_121_2_17
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 66
\cadenzaOn
\phrasingSlurDown
e4 a8 gis\noBeam a a\noBeam( \afterGrace b2.\( { a16[ gis!]\) } a2.) r4
\acciaccatura b8 \afterGrace c2.\( { d16[ c b c]\) } b8[( c32 b a gis!]
a8[ b32 a gis! fis]) a1 r4
\bar ""
gis!16[( a]) \bar "" b[( c]) \afterGrace b4\( { c16[ b a]\) } gis![( a]) 
a8\noBeam( b4 c32[ b a gis! a8] \times 2/3 { b16[ a gis! } f8]) 
\varA
f16\startTextSpan e8.\stopTextSpan\noBeam~ 
e2 e r4
\bar ""
d8 e16[( f]) \bar "" \times 2/3 { gis!16[( a gis } f8\mordent]) 
gis!16[( a b8~] b[ a\mordent^\markup { \sharp }])
 \times 2/3 { gis!16[( a gis } f8\mordent]) \breathe 
\varA
f16\startTextSpan e8.\stopTextSpan\noBeam~ 
e2 e2.
\bar "|." 
s4 \fixB e \fixC
\bar "|." 
s16 \clef treble
\varA
f8\startTextSpan e8\stopTextSpan\noBeam
\bar "|." 
}
\addlyrics { За- пла- ка Цоц- ка, Цоц- ке мо, по Юр- та, по Ма- ка- ра- ди,
по го- ла бо- са ци- ган- ка }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 66 4)
		}
	}
}
%
\header{
  opus = "ТД-121,2,17"
  tagline = ##f
}


