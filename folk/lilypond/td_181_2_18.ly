%{
td_181_2_18
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c'' {
%\tempo 8 = 200
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
  \rhythmMarkA \rhyMarkAAdot #"66"
\time 5/16
g16[( f]) f8. | e16[( c]) d8. | c8 d[( e16]) | f[( g]) g8. | 
c,8 \acciaccatura e f8.\noBeam | e16[( c]) d8. | c8 d8.\noBeam | d8 d8.\noBeam
 \bar "|." 
s8. \fixB s8
 \bar "|."  
}
\addlyrics { Де ка- ле- са Бог- дан ю- нак, 
Бог- \startTextSpan да- не ле, ко- ла- де ле \stopTextSpan }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 82 4)
		}
	}
}
%
\header{
  opus = "ТД-181,2,18"
  tagline = ##f
}


