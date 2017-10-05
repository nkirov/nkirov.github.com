%{
td_178_2_11
%}

\include "td-preamble.ly"
%\include "Rhythm_marks.ly"

\score {
\relative c' {
\tempo 4 = 144
%\override Score.RehearsalMark #'self-alignment-X = #LEFT
%\once \override Score.RehearsalMark #'X-offset = #8
%  \rhythmMarkA \rhyMarkAAdot #"66"
\time 2/4
c4 d | d d | e e8[( d]) | c4 c 
\bar ":|"
g'4 g8 g\noBeam | f4 g | \acciaccatura g8 f4.( e8) | d2 | e4 e8 d\noBeam | 
b4 c | d2 | d
 \bar "|." 
}
\addlyrics { Ку си съ- нян, бу- дян бъ- ди, 
ста- \startTextSpan ни ми, ста- ни- ни- не, \stopTextSpan 
ста- \startTextSpan ни ми, от- во- ри ни \stopTextSpan }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 144 4)
		}
	}
}
%
\header{
  opus = "ТД-178,2,11"
  tagline = ##f
}


