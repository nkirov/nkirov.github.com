%{
TD_121_2_10
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 152
  \time 2/4
\parS  
\acciaccatura c8 d4 d8-\parenthesize\prall( c) | b4.( d8) | 
\varA
a4.\startTextSpan( g8\stopTextSpan) | 
g4.( a8) | b4 c8( b) | b( a) a\noBeam g | g4 a | 
\varB
b4.\startTextSpan( d8\stopTextSpan) | 
a4.( g8) |
\override Glissando #'style = #'zigzag
\set Score.measureLength = #(ly:make-moment 3 4)
g2\glissando \hideNotes e4 \unHideNotes | 
\set Score.measureLength = #(ly:make-moment 2 4)
d4 g | g r | g a8.([ b16)] | b4.( d8) | a4~( a16[ b a g)] |  
\set Score.measureLength = #(ly:make-moment 3 4)
g2\glissando \hideNotes e4 \unHideNotes | 
\set Score.measureLength = #(ly:make-moment 2 4)
d4 g | g2
 \bar "|." 
s4 \fixB a,4 \fixC 
 \bar "|."
\endm 
\varA
a'4\startTextSpan~( a16[ b a g]\stopTextSpan) \bar "||"
\varB
a8\startTextSpan( b4 d8\stopTextSpan) 
 \bar "|."
}
\addlyrics { Кой- то ва- да- та при- ско- чи, ма- ри, ва- да- та на 
ли- " " ва- да- та сри- щу Въ- льо- ви " " Бан- да- та }
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
		tempoWholesPerMinute = #(ly:make-moment 152 4)
		}
	}
}
%
\header{
  opus = "ТД-121,2,10"
  tagline = ##f
}


