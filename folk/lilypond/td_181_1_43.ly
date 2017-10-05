%{
td_181_1_43
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c' {
%\tempo 8 = 200
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
  \rhythmMarkA \rhyMarkAAdot #"58"
\time 5/16
d8 g[( f16]) | e8 f[( e16]) | d[( e]) e8. | d16[( c]) d8. | 
d8 g[( f16]) | e8 f[( e16]) | 
\varA
d\startTextSpan[( e]) e8.\stopTextSpan | 
d16[( c]) d8. 
 \bar "|." 
s8. \fixB s8 \fixC
  \bar "|." 
\endmmm
\varA
\acciaccatura d8\startTextSpan e8 e8.\stopTextSpan 
  \bar "|."  
}
\addlyrics { За- бяг- на- ли два- ма бра- тя, 
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
		\Score tempoWholesPerMinute = #(ly:make-moment 145 8)
		}
	}
}
%
\header{
  opus = "ТД-181,1,43"
  tagline = ##f
}


