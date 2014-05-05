%{
td_095_2_09
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 176
\time 2/4
\repeat volta 2 { 
  c4. d8 | b4 g | b4. a8 | g4 a | a2 } 
  \alternative { { b4 a8\noBeam g } { a4 a8\noBeam a } }
 \bar "|." 
}
\addlyrics { За- зо- ри си я- сна зо- ра, 
ко- \startTextSpan ла- ди ле, \stopTextSpan 
ла- \startTextSpan ди ле \stopTextSpan }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 176 4)
		}
	}
}
%
\header{
  opus = "ТД-95,2,9"
  tagline = ##f
}


