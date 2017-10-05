%{
td_140_2_52
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 112
\cadenzaOn
\phrasingSlurDown
\override Glissando #'style = #'zigzag
c4 \acciaccatura c8 d8.[( c32 b] c2.) \times 2/3 { b8[( aes \noteFi g]\glissando } c2)
b8[( aes!]) g8[( \noteFi f16\glissando
\once \override Staff.NoteHead  #'style = #'cross
d]) f8\noBeam g16[( aes!]) g1~ g4 r r
\bar ""
c4 \acciaccatura c8 d8.[( c32 b] c2) \bar "" 
b8[( aes!16 \noteFi g]\glissando c4^\ltoe) \bar ""
b8[( aes!]) g8[( \noteFi f16\glissando
\once \override Staff.NoteHead  #'style = #'cross
d]) \bar "" f8\noBeam g[( f]) \bar "" \acciaccatura { g16[ f e] } 
f2.( \afterGrace g2.\( { f16[ e]\) } 
\bar ""
\afterGrace f4\( { e16[ d e]\) } c2) r4 r \bar "" e8[( f]) \bar ""
\varAB
s4\startTextSpan g4^\rtoe\stopTextSpan \bar ""
\noteFi g(\glissando c) b8[( aes!]) \bar ""
g8[( \noteFi f16\glissando
\once \override Staff.NoteHead  #'style = #'cross
d]) \bar "" f8 g[( f]) \afterGrace f4\mordent(\( { e16[ d]\) } c4^\ltoe) \breathe
f8 g\noBeam g[( f]) f[( e]) \acciaccatura { f16[ e^"↓" d e] } d4 d8 d\noBeam d1(~ d2. c4) r
 \bar "|." 
 s16 \clef treble
\varA
s4\startTextSpan g'4.\stopTextSpan \bar "||"
\varB
s4\startTextSpan g2\stopTextSpan 
 \bar "|."
}
\addlyrics { Ва- крил ма- ми си ду- ма- ше: Ма- мо льо, ми- ла ма- мо льо, 
ма- мо льо, ми- ла ма- мо льо, сват- ба е В'лик- ден за- да- ло }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 112 4)
		}
	}
}
%
\header{
  opus = "ТД-140,2,52"
  tagline = ##f
}


