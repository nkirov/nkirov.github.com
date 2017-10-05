%{
TD_96_2_03
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 16 = 320
  \time 9/16
  a8\noBeam b8 c8 \acciaccatura { b16[c b] } a8. | b8\noBeam a8 gis8\prall f16([ e8)] |
\varA  
  e8\startTextSpan f16([ gis)] a16([ gis)] \acciaccatura { f16[ gis f] } e8.\stopTextSpan | 
  e8\noBeam e e8\noBeam e8. 
\bar "|." 
s4 \fixB c16 \fixC s4
\bar "|."
\set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 9 16)  
 \clef treble
\varA  
  e8\startTextSpan f8 a16([ gis)] \acciaccatura { f16[ gis f] } e8.\stopTextSpan 
\bar "|."  
\cadenzaOn s1 s1 s1 s1
}
\addlyrics { Ма- "ма~й" Ни- ко- ла сго- ди- ла, ма- "ма~й" Ни- ко- ла сго- ди- ла }
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
		tempoWholesPerMinute = #(ly:make-moment 320 16)
		}
	}
}
%
\header{
  opus = "ТД-96,2,3"
  tagline = ##f
}


