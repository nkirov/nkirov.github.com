%{
TD_138_2_04
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 112
  \time 2/4
a4 d | 
\varA
d8\startTextSpan( e4 d8\stopTextSpan) |
e4 e8\prall([ d]) | 
\varB
d4.\startTextSpan( c8\stopTextSpan) | 
d4 c | a c | 
\varC
\acciaccatura c8\startTextSpan d4( e16[ d c8\stopTextSpan]) | 
\override Glissando #'style = #'zigzag
\set Score.measureLength = #(ly:make-moment 3 4)
d4 c\glissando \hideNotes g \unHideNotes  |
\set Score.measureLength = #(ly:make-moment 2 4)
\varD
 a2\startTextSpan^\rtoe | a4 a\stopTextSpan\fermata 
 \bar "|." 
 s4 \fixB d,4 \fixC
  \bar "|." 
\endm  
\varA
\acciaccatura d'8\startTextSpan e4\( \acciaccatura { f16[ e] } d4\stopTextSpan\) \bar "||"
\varB
d4.\startTextSpan( \times 2/3 { e16[ d c\stopTextSpan]) }  \bar "||"
\varC
d4.\startTextSpan( c8\stopTextSpan)  \bar "||"
\varD
 a4\startTextSpan  a | a2\stopTextSpan\fermata 
\bar "|." 
}
\addlyrics { Как се Ма- рий- ка до- би- ла, слън- це- то ни е " " ви- де- ла }
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
		tempoWholesPerMinute = #(ly:make-moment 112 4)
		}
	}
}
%
\header{
  opus = "ТД-138,2,4"
  tagline = ##f
}


