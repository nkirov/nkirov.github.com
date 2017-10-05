%{
td_135_2_11
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 8 = 264
\time 3/8
c4 b8 | c a4 | b a8 | a g[( fis]) | g a[( b]) | c d4 |
c b8 | c a4 | b a8 | a g[( fis]) | g a4 | a8 a4
 \bar "|." 
s8 \fixB gis4
 \bar "|."  
}
\addlyrics { Сед- на- ли са три де- ли- и, 
ко- \startTextSpan ла- де ле, \stopTextSpan
три \startTextSpan де- ли- и,
три вай- во- ди, ко- ла- де ле \stopTextSpan }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 264 8)
		}
	}
}
%
\header{
  opus = "ТД-135,2,11"
  tagline = ##f
}


