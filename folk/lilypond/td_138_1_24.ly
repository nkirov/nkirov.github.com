%{
TD_138_1_24
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 120
  \time 2/4
 a4 b | 
 \varA
\override Glissando #'style = #'zigzag 
 \set Score.measureLength = #(ly:make-moment 3 4)
 g\startTextSpan \noteFi b\glissando \hideNotes g\stopTextSpan \unHideNotes | 
 \set Score.measureLength = #(ly:make-moment 2 4)
 a2 | a4 b | 
 \varB
 c4.\startTextSpan( b8\stopTextSpan) | 
 a4 b | 
 \break
 \varA
 \set Score.measureLength = #(ly:make-moment 3 4)
 g\startTextSpan \noteFi b\glissando \hideNotes g\stopTextSpan \unHideNotes | 
 \set Score.measureLength = #(ly:make-moment 2 4)
 a2 | a4 a | a2\fermata
 \bar "|."
 s4 \fixB e4 \fixC
 \bar "|." 
 \endm
\varA
 g4\startTextSpan b8( a\stopTextSpan)] \bar "||"
 \varB
 c4\startTextSpan( \times 2/3 { d8 c b\stopTextSpan)] }
 \bar "|." 
}
\addlyrics { От ца- ря фер- " " ман при- стиг- на, 
от ца- ря и " " от ве- зи- ря }
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
  opus = "ТД-138,1,24"
  tagline = ##f
}


