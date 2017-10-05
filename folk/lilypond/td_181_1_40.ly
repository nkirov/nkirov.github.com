%{
td_181_1_40
%}

\include "td-preamble.ly"
%\include "Rhythm_marks.ly"

\score {
\relative c'' {
\tempo 8 = 158
%\override Score.RehearsalMark #'self-alignment-X = #LEFT
%\once \override Score.RehearsalMark #'X-offset = #8
%  \rhythmMarkA \rhyMarkAAdot #"66"
\time 5/16
g16[( fis]) e8[( d16]) | d8 e16.[( fis]) | g16[( fis]) e8[( d16]) | c16[( b]) d8. |
g16[( fis]) e8[( d16]) | d8 e16.[( fis]) | g16[( fis]) e8. | d16[( c]) d8.
 \bar "|." 
}
\addlyrics { Чу- ли сме та и раз- бра- ли, 
ста- \startTextSpan ни- ни- не, го- спо- ди- не \stopTextSpan }
%
\layout {
%   \context { 
%	    \Staff \remove "Time_signature_engraver" } 
  indent = #0
  line-width = 190\mm
  ragged-right=##f
\context {
      \Lyrics
      \consists "Text_spanner_engraver"
      \override TextSpanner #'direction = #DOWN
      \override TextSpanner #'style = #'line    
      \override TextSpanner #'outside-staff-priority = ##f
      \override TextSpanner #'padding = #0.2 % sets the distance of the line from the lyrics
      \override TextSpanner #'bound-details =
      #`((left . ((Y . 0)
                  (padding . 0)
                  (attach-dir . ,LEFT)))
         (left-broken . ((end-on-note . #t)))
         (right . ((Y . 0)
                   (padding . 0)
                   (attach-dir . ,RIGHT))))
    }
}
%
\midi { 
	\context {
		\Score tempoWholesPerMinute = #(ly:make-moment 158 8)
		}
	}
}
%
\header{
  opus = "ТД-181,1,40"
  tagline = ##f
}


