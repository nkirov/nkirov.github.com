%{
TD_141_1_06
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c'' {
% \tempo 4 = 144  
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
  \rhythmMarkA \rhyMarkCdot #"138-144"
 \time 2/4
 b4 c \acciaccatura c8 d4 c b8.( a16 g4) a16( b8.) a4 g8.\prall( f16 e4) g a
 b a8\prall( g) g4.( a8) f4\prall e e2\fermata
 \bar "|." 
 s4 \fixB b4 
 \bar "|." 
}
\addlyrics { Как- во йе чу- до ста- на- ло княз Бо- рис се- ло го- ля- мо }
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
		tempoWholesPerMinute = #(ly:make-moment 144 4)
		}
	}
}

\header{
  opus = "ТД-141,1,6"
  tagline = ##f
}


