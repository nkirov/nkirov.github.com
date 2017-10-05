%{
TD_093_1_06
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \time 9/16
 \phrasingSlurDown
\varA
a8\startTextSpan b16([ c)] c8 \acciaccatura { b16[ c] } b8.\stopTextSpan | 
c8 \acciaccatura { b16[ c] } b16.([ a32)] b8 a8. |
b16([ c)] c8 b16([ c)] 
\afterGrace b8.\( { c16[ b a\)] } | 
\break
\varB
a8\startTextSpan a\noBeam a a8.\stopTextSpan  
 \bar "|." 
\set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 9 16)  
 \clef treble 
\varA
a16\startTextSpan([ b)] c8 b16([ c)] b8.\stopTextSpan \bar "||" 
\varB
b8\startTextSpan a\noBeam a a8.\stopTextSpan  
 \bar "|." 
}
\addlyrics { Са- ма са пуш- ка от- пъ- на, та ми у- да- ри, у- да- ри }
%
\layout {
  indent = #0
  line-width = 190\mm
  ragged-right=##f
}
%
\midi { 
	\context {
		\Score
		tempoWholesPerMinute = #(ly:make-moment 168 8)
		}
	}
}
%
\header{
  opus = "ТД-93,1,6"
  tagline = ##f
}


