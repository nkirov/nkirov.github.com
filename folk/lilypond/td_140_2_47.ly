%{
TD_140_2_47
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 152
  \time 2/4
 g4 \acciaccatura b8 c( b) \acciaccatura b c4( d16 c b8) c4 c8( b) a4 b \break
 a8( b4 a16 g) g4 a a^\rtoe( g^\ltoe) a b a8( g) g4 g2
 \bar "|." 
 s8 \fixB fis4 
 \bar "|." 
}
\addlyrics { Где са йе чу- ло- ви- дя- ло мо- ма в'зан- да- на да ле- жи }
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
  opus = "ТД-140,2,47"
  tagline = ##f
}



