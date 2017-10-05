%{
td_181_2_15
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c' {
%\tempo 8 = 200
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
  \rhythmMarkA \rhyMarkAAdot #"54"
\time 5/16
\override Glissando #'style = #'zigzag
\acciaccatura f8 g\glissando f8.\noBeam | \acciaccatura e8 f\glissando d8.\noBeam | 
c8 d[( e16]) | f8 g\prall[( f16]) | \acciaccatura f8 g\glissando f8.\noBeam  |
\acciaccatura e8 f\glissando d8.\noBeam | c8 d8.\noBeam | d8 d\noBeam r16
 \bar "|." 
s8 \fixB e8 s16
  \bar "|." 
}
\addlyrics { Съ- бра- ли са, 
ко- \startTextSpan ла- де ле, \stopTextSpan съ- бор мом- ци, 
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
		\Score tempoWholesPerMinute = #(ly:make-moment 68 4)
		}
	}
}
%
\header{
  opus = "ТД-181,2,15"
  tagline = ##f
}


