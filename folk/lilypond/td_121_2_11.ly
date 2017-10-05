%{
TD_121_2_11
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 152
  \time 2/4
d8 d4 e8 |
\override Glissando #'style = #'zigzag
d4\glissando a | 
\set Score.measureLength = #(ly:make-moment 3 4)
\varA
d4\startTextSpan \noteFi d\glissando \hideNotes a4\stopTextSpan \unHideNotes |
a2\glissando \hideNotes c4 \unHideNotes |
\set Score.measureLength = #(ly:make-moment 2 4)
d8 d4 e8 | d4\glissando a | 
\set Score.measureLength = #(ly:make-moment 3 4)
\acciaccatura c8 d4 \noteFi d\glissando \hideNotes a4 \unHideNotes |
\set Score.measureLength = #(ly:make-moment 2 4)
a2
\break
\bar "|:" 
a2 | a4 \acciaccatura c8 d4 | 
\varB
d8\startTextSpan( c) \acciaccatura c8 b( a\stopTextSpan) |
a8\noBeam g\noBeam~( g16[ a g fis]) | 
\varC
e8\startTextSpan fis4 fis8\stopTextSpan | 
\acciaccatura fis8 a4 a |
\varD
\acciaccatura a8\startTextSpan fis4 e8( d\stopTextSpan) | 
d2 
 \bar ":|" 
 \break 
 s8 \fixB e,4 \fixC s8
 \bar "|."
\endm
\varA
\set Score.measureLength = #(ly:make-moment 3 4)
\acciaccatura c''8\startTextSpan d4 d\glissando \hideNotes a4\stopTextSpan \unHideNotes 
\set Score.measureLength = #(ly:make-moment 2 4)
\bar "||"
\varB
d8\startTextSpan( c) b\prall( a\stopTextSpan) \bar "||"
\varC
fis4\startTextSpan fis8\noBeam fis\stopTextSpan \bar "||" 
\varD
g8\startTextSpan([ fis)] e8.( d16\stopTextSpan)
 \bar "|."
}
\addlyrics { Ди- мо- ва ма- ма ду- ма- " " ши, " " Ди- мо- ва ма- ма ду- ма- " " ши, 
ха, ха, ха, де, де, де, " " Ди- мо льо, ми- ли- чък ма- ма }
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
  opus = "ТД-121,2,11"
  tagline = ##f
}


