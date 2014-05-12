%{
td_138_1_25a
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 116
\cadenzaOn
\phrasingSlurDown
\override Glissando #'style = #'zigzag
a4 a d8[( e]~ e2 f16[ e d8]) d[( e] \grace { d32[\( e d c] } d1\) e8[ d] c\noBeam) r
\acciaccatura c8 d4 \acciaccatura d8 e4 d16[( e d c]) b4
\bar ""
\acciaccatura c8 d4( c8.\prall[ b16]) b1 r4 r \bar "" \acciaccatura d8 
e4^\ltoe e^\ltoe e^\ltoe d d16[(e d c]) b4 \breathe \bar ""
c8 \afterGrace c4.\( { d16[ c b]\) }
\bar ""
d4^\ltoe c\glissando a2. a1 r4 r \bar "" 
\acciaccatura c8 d4 \acciaccatura d8 e4 e d d16[(e d c]) b4 r \bar ""
c8 \afterGrace c4.\( { d16[ c b]\) }
\bar ""
d8 d[\prall( c32 \noteFi b])\glissando a2. a1
 \bar "|."
\break
a8 a4. d8[( e]~ e2 f16[ e d8]) d[( e] \grace { d32[\( e d c] } d1\))
d8[( e]) e16[( d c8]) r4 d^\ltoe e d16[( e d c]) b4
\bar ""
\acciaccatura c8 d4( \grace { e16[\( d] } c8.\)[ b16]) b1 \bar ""
r4 r \bar ""
\acciaccatura d8 e4 e e d16[( e d c]) b4^\ltoe c8 
\afterGrace c4.\( { d16[ c b]\) } 
d4 c\glissando \hideNotes a16 \unHideNotes 
a2. a1 r4 r4
\bar ""
\acciaccatura c8 d4 \acciaccatura d8 e4 e^\ltoe e^\rtoe 
d16[( e d c]) b4 c8 \bar ""
\afterGrace c4.\( { d16[ c b\)] } 
\bar ""
d4^\ltoe c\glissando a2. a1
 \bar "|." 
s4 \fixB c,
 \bar "|."  
}
\addlyrics { Ан- ге- ли- но, ги- ди мал- ка мо- ме, ма- ма ка- ра ли та, ра- но
бу- ди ли та? Ни ма ка- ра, ба- те, ни ма ра- но бу- ди, 
ни- ма ка- ра, ба- те, ни ма ра- но бу- ди, ах, най ма пра- ща от
Ду- нав за " " во- да, пък я не знам, ба- те, Ду- нав от- де те- че }
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
  opus = "ТД-138,1,25"
  tagline = ##f
}


