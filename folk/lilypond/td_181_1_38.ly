%{
td_181_1_38
%}

\include "td-preamble.ly"
%\include "Rhythm_marks.ly"

\score {
\relative c'' {
\tempo 8 = 176
%\override Score.RehearsalMark #'self-alignment-X = #LEFT
%\once \override Score.RehearsalMark #'X-offset = #8
%  \rhythmMarkA \rhyMarkAAdot #"66"
\time 9/16
a8 g16[( fis]) d8 fis!16.[( e]) | e16[( d]) d[( c]) \acciaccatura d8 e e16.[( d]) |
d8 d\noBeam \acciaccatura f g g\prall[( fis16]) |
a8 g16[( fis]) d8 fis!16.[( e]) | e16[( d]) d[( c]) \acciaccatura d8 e e16.[( d]) |
d8 d\noBeam d d8.\noBeam
 \bar "|." 
s8. \fixB b4
 \bar "|."  
}
\addlyrics { Из- ве- де си цар Ко- ста- дин, 
ко- \startTextSpan ла- де ле, \stopTextSpan
по \startTextSpan ли- ва- ди, ца- рю, джа- нъм, ко- ла- де ле \stopTextSpan }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 176 8)
		}
	}
}
%
\header{
  opus = "ТД-181,1,38"
  tagline = ##f
}


