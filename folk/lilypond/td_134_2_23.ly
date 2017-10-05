%{
td_134_2_23
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 96
\cadenzaOn
\phrasingSlurDown
a16\noBeam a[( b8]~ \afterGrace b1\( { \stdB c8\) \stdE } d4 e16[ d c\prall b] 
\afterGrace c8[\( { \stdB d\) \stdE } \grace { c[\( b] } a\)])
b8[( a32 b a gis] a8[ b32 a gis! f!]) gis!8\prall[( f!]) e1 r4
\bar ""
b'16[( c]) \bar "" d8( c32[ d s^\rtoe c b] c[ d s^\rtoe c b] 
\times 2/3 { c16[ b a] } 
\times 2/3 { b16[ a gis!] } \grace { a16[\( b a gis] } 
\afterGrace fis2\))\( { \stdB d8\) \stdE } \acciaccatura e8 fis!1~ fis4 r r
\bar ""
e16[( f]) \bar "" gis!8( \afterGrace a2.\( { b16[ a gis a]\) } \bar ""
\afterGrace b4^\rtoe\( { cis16[ b a gis!]\) } 
\grace { a16[\( b a gis!] } fis!4\))
\acciaccatura fis!8 e2 b'8^\ltoe
\acciaccatura { a16[ b] } a\prall[( gis!] a[ b a gis])
\bar ""
fis!8^\ltoe e4. e1~ e2.
 \bar "|." 
s4 \fixB b 
 \bar "|."  
}
\addlyrics { Ма- ма Ма- рий- ка пли- те- ше дор се- дям- о- сям пле- тен- ки }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 96 4)
		}
	}
}
%
\header{
  opus = "ТД-134,2,23"
  tagline = ##f
}


