%{
kav_140_1_15
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 160
 \time 2/4
g4 g | g b8( c) | b4( a) | g b | 
\varA
a\startTextSpan( b16[ a g8\stopTextSpan]) | 
\acciaccatura g8 a4 a8( g) |
\varB
f4\startTextSpan a8( f\stopTextSpan) | 
\break
\varC
\set Score.measureLength = #(ly:make-moment 3 4)
s4\startTextSpan g2\stopTextSpan | 
\set Score.measureLength = #(ly:make-moment 2 4)
\varD
g8\startTextSpan g4.\stopTextSpan | 
\par
g2
 \bar "|." 
 s4 \fixB e \fixC
  \bar "|." 
 \endm
\varA
\set Score.measureLength = #(ly:make-moment 3 4)
s4\startTextSpan a2\stopTextSpan \bar "||"
\set Score.measureLength = #(ly:make-moment 2 4)
\varB
f4\startTextSpan g\stopTextSpan \bar "||"
\varC
 \afterGrace g2\startTextSpan\( { \stdB 
\once \override NoteHead #'style = #'cross 
f'8\stopTextSpan\) \stdE } \bar "||"
\varD
\stemUp
\once \override NoteHead #'style = #'cross 
f8\startTextSpan g,4.\stopTextSpan 
\bar "|." 
}
\addlyrics { Ян- ка за у- да о- ти- ва, Ян- ко льо, бул- ка ху- ба- ва }
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
		tempoWholesPerMinute = #(ly:make-moment 160 4)
		}
	}
}
%
\header{
  opus = "ТД-140,1,15"
  tagline = ##f
}


