%{
td_136_1_07a
%}

\include "td-preamble.ly"
%\include "Rhythm_marks.ly"

\score {
\relative c'' {
\tempo 8 = 140
%\override Score.RehearsalMark #'self-alignment-X = #LEFT
%\once \override Score.RehearsalMark #'X-offset = #8
%  \rhythmMarkA \rhyMarkAAdot #"66"
\time 5/16
a16[( g]) \acciaccatura f8 g16[( f e]) | f[( e]) d8. | c8 d16.[( e]) |
f8 f8.\noBeam | a16[( g]) \acciaccatura f8 g16[( f e]) | f[( e]) d8. |
c16[( d]) d8. | d8 d8.\noBeam
 \bar "|." 
s8. \fixB g,8
 \bar "|."  
}
\addlyrics { Пo- ма- мял си, 
кo- \startTextSpan ла- де ле, \stopTextSpan ди- ли  На- но, 
кo- \startTextSpan ла- де ле \stopTextSpan }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 140 8)
		}
	}
}
%
\header{
  opus = "ТД-136,1,7"
  tagline = ##f
}


