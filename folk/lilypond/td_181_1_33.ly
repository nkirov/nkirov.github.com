%{
td_181_1_33
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c' {
%\tempo 8 = 200
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
  \rhythmMarkA \rhyMarkAAdot #"66"
\time 5/16
d16[( e]) f8. | f16[( e]) d8. | d8~ d8.\noBeam | \acciaccatura f8 g~ g16.\noBeam f |
g8 g16.[( f]) | f8 g8.\noBeam |
\varA
g16\startTextSpan[( f]) f8.\stopTextSpan | 
\parS
f16[( e-\parenthesize^"↓"]) d8. | d8~ d8.\noBeam | d16[( c]) f16.[( e]) | d8 d8.\noBeam |  d8 d8.\noBeam
 \bar "|." 
\endmmm
\varA
g16\startTextSpan[( f]) \acciaccatura e8 f8.\stopTextSpan
  \bar "|." 
}
\addlyrics { За- мъ- чи сай, 
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
		\Score tempoWholesPerMinute = #(ly:make-moment 165 8)
		}
	}
}
%
\header{
  opus = "ТД-181,1,33"
  tagline = ##f
}


