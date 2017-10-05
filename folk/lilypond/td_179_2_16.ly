%{
laz_179_2_16
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 176
 \time 2/4
 \override Glissando #'style = #'zigzag
c4 d | d \acciaccatura f8 g4 | 
\set Score.measureLength = #(ly:make-moment 3 4)
f \noteFi e\glissando \hideNotes c \unHideNotes  | 
\set Score.measureLength = #(ly:make-moment 2 4)
d2 | d8( e) f4 |
\set Score.measureLength = #(ly:make-moment 3 4)
\acciaccatura f8 e4 \noteFi e\glissando \hideNotes c \unHideNotes |
\set Score.measureLength = #(ly:make-moment 2 4)
d d | d r
 \bar "|." 
 s4 \fixB c
 \bar "|."  
}
\addlyrics { За- спа- ло ми~й ди- тен- " " це под бял чър- вен " " трин- да- фел }
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
		tempoWholesPerMinute = #(ly:make-moment 176 4)
		}
	}
}
%
\header{
  opus = "ТД-179,2,16"
  tagline = ##f
}


