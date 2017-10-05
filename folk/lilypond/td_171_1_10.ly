%{
TD_171_1_10
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 132
  \time 2/4
 d4 g4 g8( f e d) g4 g8( a) a( g) g( f) 
   \override Glissando #'style = #'zigzag
 \noteFi e4.\glissando a8 a( g) g( f) 
 \varA
 f\startTextSpan( e e\prall d\stopTextSpan) 
e4 f e8( d) d4 d2  
 \bar "|." 
\endm
\varA
 f8\startTextSpan( e d4\stopTextSpan) 
 \bar "|."
}
\addlyrics { Та- нас на Мар- га ду- ма ше: " " Мар- ге ле, сев- да- лий- ке ле }
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
		tempoWholesPerMinute = #(ly:make-moment 132 4)
		}
	}
}

\header{
  opus = "ТД-171,1,10"
  tagline = ##f
}



