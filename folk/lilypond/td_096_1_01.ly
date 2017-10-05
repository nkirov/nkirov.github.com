%{
td_096_1_01
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c'' {
%\tempo 4 = 46
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
  \rhythmMarkA \rhyMarkAdotAA #"46"
\time 7/16
b16[( a8]) b8\noBeam c | c16[( a8]) a4 | 
b16[( a8]) b8\noBeam c | c16[( a8]) a4 |
c16[( a8]) b[(^\ltoe c])^\rtoe | b32[(a~ a16 b)] b4\fermata
 \bar "|." 
s4 \fixB fis16^↑ s8
  \bar "|." 
}
\addlyrics { Сре- бъ- рян пръ- стян гри- да под- пи- ра,
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
		\Score tempoWholesPerMinute = #(ly:make-moment 120 4)
		}
	}
}
%
\header{
  opus = "ТД-96,1,1"
  tagline = ##f
}


