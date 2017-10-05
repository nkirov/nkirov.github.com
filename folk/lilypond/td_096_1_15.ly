%{
td_096_1_15
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 112
\cadenzaOn
\phrasingSlurDown
\override Glissando #'style = #'zigzag
\noteFi \hideNotes g64\glissando \unHideNotes c2 d\mordent
\varA
c16\startTextSpan[( b c8] d16[ c b8\stopTextSpan]) 
a2 
\varB
a2\startTextSpan(~ a8[ s^\rtoe b\stopTextSpan]) 
\varC
c8\startTextSpan\noBeam^\rtoe c32[( d c b] \afterGrace c2.\( { d16[ c b]\) } 
\par
\grace { c16[\( b] } \afterGrace a2\)\( { c16[ \parenthesize b\stopTextSpan]\)) }
\bar ""
c16[( b\prall a8]~ a2) a8^\rtoe\noBeam a~ a1\fermata
 \bar "|." 
s4 \fixB e \fixC
 \bar "|." 
 s16 \clef treble
\varA
c'32\startTextSpan[( b c16] d32[ c b16\stopTextSpan])  \bar "||"
\varB
\afterGrace a2\startTextSpan\( { \stdB b8\stopTextSpan\) \stdE } \bar "||" 
\varC
c4\startTextSpan\noBeam \acciaccatura { c16[ d c b] } 
\afterGrace c2.\( { d16[ c b]\) } 
c16[( b\prall a8]~ a[ c16 b\stopTextSpan])
 \bar "|."  
}
\addlyrics { " " Той- не То- до- ро, за- спа- ла ли си }
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
  opus = "ТД-96,1,15"
  tagline = ##f
}


