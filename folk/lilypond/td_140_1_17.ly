%{
td_140_1_17
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 152
\cadenzaOn
\phrasingSlurDown
\par
\ii \parenthesize a4
\override Glissando #'style = #'zigzag
\acciaccatura c8 d4 d( e2.~ e1~ \afterGrace e8[\( { \stdB f8\) \stdE } e16 d] 
\afterGrace e8[\( { \stdB f8\) \stdE } e16 d])
\acciaccatura d8 e4 e e8[( d\mordent] e4) e e8[( d16 c] d2. \afterGrace e2\( { c16[ d]\) } e4)
\bar ""
 \afterGrace d4(\(\glissando { c16[ \noteFi b]\glissando\) } g4.) r8 \acciaccatura d'8 e4. 
e( \grace { d16[\( c] } d2.\) e16[ d c8]) d4 d \afterGrace d(\( { \stdB c8\) \stdE } 
\noteFi b8[\glissando g])
a4 a2. a1(~ a2 g4) r
\bar ""
\acciaccatura d'8 e4 e( \grace { d16[\( c] } d2.\) e16[ d c8]) \acciaccatura c8 d4 d 
\noteFi \acciaccatura c8\glissando \afterGrace d4(\( { \stdB c8\) \stdE } \noteFi b[\glissando g]) a8. 
a16\noBeam~ a2. a1~ a 
 \bar "|." 
s4 \fixB c,
 \bar "|."  
}
\addlyrics { "(и)" Зла- те ле, злат- на я- бъл- ко! Бя- ли- ла Зла- та да- ро- ве
на ти- ха ря- ка Ма- ри- ца }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 152 4)
		}
	}
}
%
\header{
  opus = "ТД-140,1,17"
  tagline = ##f
}


