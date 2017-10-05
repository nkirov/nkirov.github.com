%{
TD_138_1_06
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 120
  \time 2/4
\acciaccatura c8 d4 c4 | 
\varA
\override Glissando #'style = #'zigzag
\set Score.measureLength = #(ly:make-moment 3 4)
d\startTextSpan \noteFi c\glissando \hideNotes g\stopTextSpan \unHideNotes | 
\set Score.measureLength = #(ly:make-moment 2 4)
a2 | 
\varB
g4\startTextSpan \acciaccatura c8 d4\stopTextSpan | 
c2 | 
\varC
d4\startTextSpan c\stopTextSpan | 
\varD
d\startTextSpan c\stopTextSpan | 
a2 | a4 a | a2\fermata 
 \bar "|." 
 s4 \fixB d,4 \fixC
\bar "|."
\endm
\varA
d'4\startTextSpan c8\prall([ bes\stopTextSpan]) \bar "||"
\varB
a4\startTextSpan \acciaccatura c8 d4\stopTextSpan \bar "||"
\varC
\acciaccatura c8\startTextSpan d4 c\stopTextSpan \bar "||"
\varD
\set Score.measureLength = #(ly:make-moment 3 4)
d4\startTextSpan \noteFi c\glissando \hideNotes g\stopTextSpan \unHideNotes
\bar "|."
}
\addlyrics { Хра- ни- ла Доб- " " ра, гле- да- ла ед- но пи- лен- це, сла- вей- че }
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
		tempoWholesPerMinute = #(ly:make-moment 120 4)
		}
	}
}
%
\header{
  opus = "ТД-138,1,6"
  tagline = ##f
}


