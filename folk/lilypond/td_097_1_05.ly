%{
td_097_1_05
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 104
\cadenzaOn
\phrasingSlurDown
\override Glissando #'style = #'zigzag
g4 g a8([ b]) c2( \grace { a16[\( b] } c4\)) a8[( g]) g4 a8([ b]) b1 \breathe
\bar "|:"
b8.[( d16]) c4\glissando \hideNotes a \unHideNotes \bar ""
b8.[(\glissando a16]) a2( b16[ a g a]) 
\varA
s\startTextSpan b4\stopTextSpan 
c8([ b]) a\prall[( g]) g1
 \bar ":|" 
 s4 \fixB b, \fixC
 \bar "|."
  s16 \clef treble
\varA
b'8.\startTextSpan[( c16\stopTextSpan])
 \bar "|."  
}
\addlyrics { Ди- вой- ко льо, ху- ба- ви- це, лю- бял " " съм те, лъ- гал съм те }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 104 4)
		}
	}
}
%
\header{
  opus = "ТД-97,1,5"
  tagline = ##f
}


