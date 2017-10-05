%{
td_095_2_22
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 8 = 208
\cadenzaOn
\override Glissando #'style = #'zigzag
\phrasingSlurDown
\noteF \grace { \stdB c8\glissando \stdE } 
d8. d16\noBeam d8 d\noBeam \afterGrace d2.(\( { c16[ b]\) }
c8\prall[ b]) \noteF \acciaccatura c8\glissando d^\ltoe\noBeam d[( c16\prall b]
\afterGrace c4\( { \stdB b8\) \stdE } a4) \afterGrace a1\fermata(\( { g16[ fis]\) } g4) r
\bar ""
\acciaccatura b8 c8. c16\noBeam c4^\rtoe \acciaccatura c8 d 
\afterGrace d([\( { e16[ d]\) } c8]) b8 b\noBeam \afterGrace b4(\( { \stdB c8\) \stdE }
b16[ a] g8\noBeam) \breathe
\bar ""
g8 a\noBeam^\rtoe a4 a8\noBeam b32[( a b a]) g8 a^\rtoe\noBeam a1\fermata r4
\bar ""
d,8^\ltoe e\noBeam fis! g\noBeam a g\noBeam a^\ltoe\noBeam g16[( a] g32[ a g fis!] g1\fermata) r4 
\bar ""
g8. a16\noBeam a8( \afterGrace b2.\( { \stdB a8\) \stdE } g\noBeam) a^\rtoe 
a[( \grace { b16[\( a] } g8\)])
g16[( a g fis!]) e8\noBeam e1\fermata
 \bar "|." 
s4 \fixB b^"↑"
\bar "|."  
}
\addlyrics { Ра- но ми ра- ни млад То- дор, ра- но ми, на ден Гер- гьов- ден,
та си кон- чи- то о- сид- ла, та си кон- чи- то о- сид- ла и си кон- чи- то
въз- сед- на }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 208 8)
		}
	}
}
%
\header{
  opus = "ТД-95,2,22"
  tagline = ##f
}


