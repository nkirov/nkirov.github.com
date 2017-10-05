%{
td_134_2_20
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 8 = 168
\cadenzaOn
\phrasingSlurDown
d8 \acciaccatura d e1 e8 e4.( f32[ e d e] f[ e d e] f[ e d16])
\acciaccatura { d16[ e d c] } d2 \acciaccatura d8 e \afterGrace e2\( { d16[ c d]\) }
\bar ""
d4.( e32[ d c d] e16[ d c\prall b] \afterGrace c2\( { d16[ c]\) } b16[ a g8]) r4 r
d'8 \acciaccatura d \afterGrace e4.\( { f16[ e d]\) } d[( e]) d8\mordent[( c])
c[( b16 c b] c32[ b a b] c[ b a16])
\bar ""
\override Glissando #'style = #'zigzag
a8 a\noBeam a1~ a2 r4 r b8 \afterGrace c4.\( { d16[ c b]\) } d8\noBeam\glissando a 
b[( a]) a8 a4 a2. r4
\bar ""
a16([ b]) \acciaccatura c8 d4. c8^\ltoe d16\mordent[( c32 b] c8) b16[( c b\prall a]) a8 a4. a1~ a2 
 \bar "|." 
 s4 \fixB d,
 \bar "|."  
}
\addlyrics { Ни- ко- ла Рад- ка ду- ма- ше: Лю- би Рад- ки ле, Рад- ки ле,
ста- ни си, Рад- ки, по- ди си, гроз- на си, Рад- ки, ни- ща те }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 168 8)
		}
	}
}
%
\header{
  opus = "ТД-134,2,20"
  tagline = ##f
}


