%{
TD_180_1_13
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 120
  \time 2/4
d8( c) d( e) 
\varA
e4.\startTextSpan( d16 e\stopTextSpan) 
d8( c) d( e) e2 d4 
  \override Glissando #'style = #'zigzag
\noteFi c8\glissando( g)
c4 d8^\ltoe( e) d2^\rtoe 
\varB
d8\startTextSpan( e) e4\stopTextSpan |
d2 d4 d 
\bar "|."
\endm
\varA
\set Score.measureLength = #(ly:make-moment 3 4)
s4\startTextSpan e2\stopTextSpan \bar "||"
\set Score.measureLength = #(ly:make-moment 2 4)
\varB
d8\startTextSpan( e) e( d\stopTextSpan) 
\bar "|." 
}
\addlyrics { То- дор на То- на  ду- ма- ше: Ой, ма- ри, То- но, То- до- ро }
\layout {
  indent = #0
  line-width = 190\mm
  ragged-right=##f
%%    ragged-last = ##t
	}
%
\midi { 
	\context {
		\Score
		tempoWholesPerMinute = #(ly:make-moment 120 4)
		}
	}
}

\header{
%%  title = "Тодор на Тона думаше"
  composer = "ТД-180,1,13"
  tagline = ##f
}


