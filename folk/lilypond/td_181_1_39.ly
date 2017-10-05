%{
td_181_1_39
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c'' {
%\tempo 8 = 200
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
  \rhythmMarkA \rhyMarkAAdot #"63"
\time 5/16
a8 g16.[( f]) | g8 \acciaccatura g f16.[( e]) | c8 d[( c16]) | e16[( f]) g8. |
a8 g16.[( f]) | g8 f16.[( e]) | c8 d8.\noBeam | d8 d8.\noBeam
 \bar "|." 
}
\addlyrics { По- иг- ра- ло~й 
ко- \startTextSpan ла- де ле, \stopTextSpan дреб- но хор- це, 
ко- \startTextSpan ла- де ле \stopTextSpan }
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
  opus = "ТД-181,1,39"
  tagline = ##f
}


