%{
td_178_2_12
%}

\include "td-preamble.ly"
%\include "Rhythm_marks.ly"

\score {
\relative c' {
\tempo 8 = 172
%\override Score.RehearsalMark #'self-alignment-X = #LEFT
%\once \override Score.RehearsalMark #'X-offset = #8
%  \rhythmMarkA \rhyMarkAAdot #"66"
\time 5/16
d16[( e]) f8. | f16[( e]) d8. | d8~ d8.\noBeam | \acciaccatura f8 g~ g16.[ f] |
g8 g[(\prall f16]) | f8 g8.\noBeam | g16[( f]) f8. | f16[( e]) d8. | d8~ d8.\noBeam 
c8 f16.[( e]) | d8 d8.\noBeam | d8 d8.\noBeam
 \bar "|." 
}
\addlyrics { За- мъ- чи са~й, 
ко- \startTextSpan ла- де, ко- ла- де ле, \stopTextSpan бо- жа май- ка, 
ко- \startTextSpan ла- де, ко- ла- де ле \stopTextSpan }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 172 8)
		}
	}
}
%
\header{
  opus = "ТД-178,2,12"
  tagline = ##f
}


