%{
td_096_2_11
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 160
\time 2/4
 c4 c8[( b]) | a4^\rtoe a^\ltoe | c b | a^\rtoe g^\ltoe | 
 c4.( b8) | a4 b8\noBeam g |
 a2 | a | b8[( a]) g4 | fis g | a2 | a
 \bar "|." 
s4 \fixB c
 \bar "|."  
}
\addlyrics { Ся- ла~й мо- ма ран бо- си- ляк, 
ей, \startTextSpan мом- ни ле, мом- ке, \stopTextSpan
ви- \startTextSpan ят две ка- лин- ки \stopTextSpan }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 160 4)
		}
	}
}
%
\header{
  opus = "ТД-96,2,11"
  tagline = ##f
}


