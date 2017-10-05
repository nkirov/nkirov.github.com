%{
td_179_2_13
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 120
\cadenzaOn
\varA
s16\startTextSpan g8\stopTextSpan 
g\noBeam( \afterGrace a2.)\( { bes16[ a g]\) } a2 a8[( bes!]
a[ \times 2/3 { g16 a bes!] } a8[ g]) g2.( a16[ g f8]) r4^\rtoe
g8^\ltoe g^\rtoe\noBeam(~ g2 a4. bes!16[ a] \times 4/5 { g16[ a bes! a g]) }
\bar ""
g2( \times 4/5 { a16[ g f e c]) } r4 r 
\varB
s16\startTextSpan d8\stopTextSpan^\ltoe
f^\rtoe\noBeam( g2 a16[ g f8]) g[( a])
\afterGrace a2\( { g16[ a]\) } g4( a16[ g f e]) d8 d\noBeam~ d2. 
\afterGrace d2.\( { e16[ d c]\) } r4
\bar ""
d8 f\noBeam( g2 a16[ g f8]) g[( a]) \afterGrace a2\( { g16[ a]\) } 
\afterGrace g4(\( { a16[ g]\) } f16[ e d c]) \breathe 
d8^\ltoe d^\rtoe\noBeam~ d2. d
 \bar "|." 
s4 \fixB b \fixC
 \bar "|."
s16 \clef treble 
\varA
f'16\startTextSpan[( g\stopTextSpan]) \bar "||" 
\varB
d16\startTextSpan[( e\stopTextSpan])
 \bar "|." 
}
\addlyrics { Ма- ма на Ки- на ду- ма- ше: Ки- не мо, ми- ла ма- ми- на,
таз ве- чер ня- ма си- ден- ки }
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
  opus = "ТД-179,2,13"
  tagline = ##f
}


