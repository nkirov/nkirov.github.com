%{
td_181_2_19
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c' {
%\tempo 8 = 200
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
  \rhythmMarkA \rhyMarkAAdot #"66"
\time 5/16
\override Glissando #'style = #'zigzag
\varA
fis16\startTextSpan[( g]) g[( a8\stopTextSpan]) | 
\varB
a16\startTextSpan[( g]) g8[( fis16\stopTextSpan]) | 
e8 e8.\noBeam | \acciaccatura d8 e16^>[( d]) d8. | 
\varC
\acciaccatura fis8\startTextSpan g g8.\stopTextSpan\noBeam |
\acciaccatura fis8 g g[( fis16]) | e8 e8.\noBeam | 
\acciaccatura d8 \noteFi e16^>[(\glissando d]) d8.
 \bar "|." 
\endmmm
\varA
fis16\startTextSpan[( g]) g16.[( a\stopTextSpan]) \bar "||"
\varB
a16\startTextSpan[( g]) \acciaccatura fis8 g[( fis16\stopTextSpan]) \bar "||"
\varC
\acciaccatura fis8\startTextSpan g\noBeam g16. g\stopTextSpan\noBeam 
 \bar "|."  
}
\addlyrics { За- зо- ри са, 
ко- \startTextSpan ла- де ле, \stopTextSpan зор- на зо- ра, 
ко- \startTextSpan ла- де ле \stopTextSpan }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 82 4)
		}
	}
}
%
\header{
  opus = "ТД-181,2,19"
  tagline = ##f
}


