%{
td_181_1_36
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c'' {
%\tempo 8 = 200
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
  \rhythmMarkA \rhyMarkBAdot #"63"
\time 7/16
\acciaccatura g8 a8. a8\noBeam~ a | g16.[( fis]) a8\noBeam~ a |
a16.[( g]) fis8\noBeam fis | e16.[( d]) d4 |
\break
fis16. g\noBeam a8 g\noBeam | fis8. e8\noBeam d | e8. fis8\noBeam~ fis |
e16.[( d]) d8\noBeam~ d
 \bar "|." 
s8. \fixB g,4
 \bar "|."  
}
\addlyrics { Про- вик- на са ху- ба- ва мо- ма сре- \startTextSpan ди зи- ме,
мом- не ле, по Kо- ле- да \stopTextSpan }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 220 8)
		}
	}
}
%
\header{
  opus = "ТД-181,1,36"
  tagline = ##f
}


