%{
laz_179_2_19
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c' {
%%\tempo 8 = 192
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
  \rhythmMarkA \rhyMarkAAAdot #"54"
 \time 7/16
 c8 d d8. | c8 d16[( e]) f16.([ e]) | d8.[( c16]) \acciaccatura d8 e8. |
 f16([ e]) d16([ e]) f16.( e) | d8 c d8. | d8\noBeam( d) d8.
 \bar "|." 
s8. \fixB d4
 \bar "|." 
}
\addlyrics { За- да- ло ми са~й, за- да- ло се- дем хи- ля- ди та- та- ри }
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
		tempoWholesPerMinute = #(ly:make-moment 192 8)
		}
	}
}
%
\header{
  opus = "ТД-179,2,19"
  tagline = ##f
}


