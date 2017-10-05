%{
TD_140_1_28
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 152
  \time 2/4
\phrasingSlurDown  
 g4 b c16( d8. c8 b) \acciaccatura b8 c4 \acciaccatura d8 c( b) a( b 
 \grace { \stdB  d\( \stdE } c\) b) a4 g g 
 \parS
 b-\parenthesize-\mordent c8.-\parenthesize-\mordent( d16 c8 b) 
 \acciaccatura b8 c4 \acciaccatura c8 b4 \time 3/4 a2. a4 a2 
 \bar "|." 
 \fixB  g4 
 \bar "|." 
}
\addlyrics { Дра- га- на ра- но ра- ни- ла,  ра-  нин- ко ра- но "в ни-" де- ля }
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

\header{
  opus = "ТД-140,1,28"
  tagline = ##f
}


