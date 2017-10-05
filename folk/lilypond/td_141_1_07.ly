%{
TD_141_1_07
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c'' {
%% \tempo 4 = 144
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
  \rhythmMarkA \rhyMarkCdot #"138-144"
  \time 2/4
g4 g c( d16 c b8) a4 \acciaccatura b8 c4 b4( c16 b a8) a4 a 
b8( a) a( b) g2 g8( f) g( a) a( g) g4 g2\fermata
 \bar "|." 
 s4 \fixB d4 
 \bar "|." 
}
\addlyrics { От-го- ре хай- ду- ти сля- за- ха, те за Ди- мит- ра пи- та- ха }
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

\header{
  opus = "ТД-141,1,7"
  tagline = ##f
}


