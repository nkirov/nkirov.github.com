%{
td_135_2_22
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c'' {
%\tempo 8 = 252
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
  \rhythmMarkA \rhyMarkAAdot #"69"
\time 5/16
b8 b8.\noBeam | c8 b16[( a8]) | b8 b8.\noBeam | c8 b16[( a8]) | a8 b16[( c8]) |
b16[( a]) a8. | b8 b8.\noBeam | b8 b8.\noBeam
 \bar "|." 
s8 \fixB c8 s16
 \bar "|."  
}
\addlyrics { Из- грял ми йе йе- сян ме- сяц 
по \startTextSpan ху- ба- ва Влаш- ка зи- мя \stopTextSpan }
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
  opus = "ТД-135,2,22"
  tagline = ##f
}


