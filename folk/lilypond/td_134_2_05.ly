%{
td_134_2_05
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 8 = 200
\time 9/16
d8 c\noBeam b a8.\noBeam | b8 g8.\noBeam a8 b | d8 c\noBeam b a8.\noBeam |
b8 g8.\noBeam g8 g\noBeam
 \bar "|." 
s8. \fixB e4 s8
 \bar "|."  
}
\addlyrics { На- у- чи се лу- до мла- до, 
ста- \startTextSpan ня- ни- ня, го- спо- ди- ня \stopTextSpan }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 200 8)
		}
	}
}
%
\header{
  opus = "ТД-134,2,5"
  tagline = ##f
}


