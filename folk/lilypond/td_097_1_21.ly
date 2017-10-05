%{
td_097_1_21
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 160
\time 4/8
a8\noBeam c c16[( b]) a8 | a c16[( b]) c[( b]) a8 |
b\noBeam a c16[( b] c8\noBeam) | b16\noBeam( a8.)~ a8\noBeam~ a~ | a2
 \bar "|." 
s4 \fixB d, 
  \bar "|." 
}
\addlyrics { Кой чи- сти- то и ви- ли- ко,
 дай \startTextSpan ла- до льо \stopTextSpan }
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
  opus = "ТД-97,1,21"
  tagline = ##f
}


