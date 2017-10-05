%{
TD_140_2_30
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 152
  \time 2/4
 a4 \acciaccatura c8 d4 d2\mordent \acciaccatura e8 d( c) c( b) g4 \acciaccatura c8 d4
 \parS 
 d8( c4-\parenthesize-\rtoe b8) 
 \acciaccatura b8 d4 c8( b)  \break g4 a 
 a4.-\parenthesize-\rtoe b8  
 c4 \acciaccatura d8 c( b) g4 a 
\varA 
 a4.\startTextSpan-\parenthesize-\rtoe g8\stopTextSpan
 a4 a\fermata 
 \bar "|." 
 s4 \fixB g4 \fixC 
 \bar "|." 
 \endm
\varA 
 \set Score.measureLength = #(ly:make-moment 3 4)
 s4\startTextSpan a2\stopTextSpan
\set Score.measureLength = #(ly:make-moment 2 4)  
}
\addlyrics { Вой- ник за- ми- на, вой- ник за- ми- на приз мо- ми- ни до- рье, 
приз мо- ми- ни до- рье }
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
  opus = "ТД-140,2,30"
  tagline = ##f
}



