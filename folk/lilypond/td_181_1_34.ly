%{
td_181_1_34
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c' {
%\tempo 8 = 200
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
  \rhythmMarkA \rhyMarkAAdot #"56"
\time 5/16
d16[( e]) f8. | \acciaccatura f8 g g16[( f e]) | d8 d8.\noBeam | e16[( d]) c8. |
d16[( e]) f16. f\noBeam | f16[( e]) g f[( e]) | d8 d8.\noBeam | d8 d8\noBeam r16
 \bar "|." 
}
\addlyrics { За- ви- ло са~й си- во сук- ле 
над \startTextSpan гра- да, гра- да ми Ца- ри- гра- да \stopTextSpan }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 140 8)
		}
	}
}
%
\header{
  opus = "ТД-181,1,34"
  tagline = ##f
}


