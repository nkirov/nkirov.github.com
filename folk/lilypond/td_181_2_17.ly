%{
td_181_2_17
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c' {
%\tempo 8 = 200
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
  \rhythmMarkA \rhyMarkAAdot #"76"
\time 5/16
\override Glissando #'style = #'zigzag
\varA
d8\startTextSpan \acciaccatura g a8.\stopTextSpan\noBeam | 
a8 a\prall[( g16]) | a[( bes]) g8[( f16]) |
f8 g16.[( a]) | g8(~ g16.[ e]) | 
f8 f16.\prall[( e]) | c8 d[( e16]) | f8 g8.\noBeam | g8~ \noteFi g16.[(\glissando e]) |
f8 \acciaccatura g f16.[( e]) | c8 d8.\noBeam | d8 d8.\noBeam
 \bar "|." 
\endmmm
\varA
f8\startTextSpan \acciaccatura g a8.\stopTextSpan\noBeam
  \bar "|." 
}
\addlyrics { По- фа- ля са мал- ка мо- ма, 
Дой- \startTextSpan не ле, ко- ла-  \stopTextSpan 
де \startTextSpan ле, \stopTextSpan
Доб- \startTextSpan ро льо, ко- ла- де ле \stopTextSpan }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 96 4)
		}
	}
}
%
\header{
  opus = "ТД-181,2,17"
  tagline = ##f
}


