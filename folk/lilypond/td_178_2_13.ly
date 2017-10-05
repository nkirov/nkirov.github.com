%{
td_178_2_13
%}

\include "td-preamble.ly"
%\include "Rhythm_marks.ly"

\score {
\relative c' {
\tempo 8 = 240
%\override Score.RehearsalMark #'self-alignment-X = #LEFT
%\once \override Score.RehearsalMark #'X-offset = #8
%  \rhythmMarkA \rhyMarkAAdot #"66"
\time 7/16
d8. a'8\noBeam g | g8. d4 | g8. g8\noBeam f | e8. d4 | c8. f4 | e8. g8\noBeam f |
e16.[( c]) d8 d\noBeam | d8. d4
 \bar "|." 
}
\addlyrics { Про- вик- на ла са~й Ен- ки- на май- ка, 
на- \startTextSpan злъ, Ен- ки ле,
Гюл- гю- люм гра- да \stopTextSpan }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 178 8)
		}
	}
}
%
\header{
  opus = "ТД-178,2,13"
  tagline = ##f
}


