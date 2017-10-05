%{
laz_178_1_17
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 138
 \time 2/4
c4 d | d \acciaccatura f8 g4 | g8( f) f( e) | d2 | g4 f | f8( e) e( d) | c4 d | d2
 \bar "|." 
}
\addlyrics { За- спа- ло ми~й де- тен- це под бял- чер- вен трен- да- фил }
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
		tempoWholesPerMinute = #(ly:make-moment 138 4)
		}
	}
}
%
\header{
  opus = "ТД-178,1,17"
  tagline = ##f
}


