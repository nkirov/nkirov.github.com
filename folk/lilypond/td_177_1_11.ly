%{
td_177_1_11
%}

\include "td-preamble.ly"
%\include "Rhythm_marks.ly"

\score {
\relative c' {
\tempo 8 = 180
%\override Score.RehearsalMark #'self-alignment-X = #LEFT
%\once \override Score.RehearsalMark #'X-offset = #8
%  \rhythmMarkA \rhyMarkAAdot #"66"
\time 5/16
\parS
c8 f-\parenthesize\prall[( ees16^"↑"]) | d8 d8.\noBeam | 
\varA
d8\startTextSpan~ d8.\stopTextSpan\noBeam | 
g8~ g\noBeam a16 |
a[( g]) g8-\parenthesize\prall[( f16]) | \acciaccatura f8 g g-\parenthesize\prall[( f16]) | 
g8 g-\parenthesize\prall[( ees16]) | d8 d8.\noBeam | d8(~ d\noBeam c16) | d8~ d\noBeam g16 |
d8 d8.\noBeam | d8 d8.\noBeam
 \bar ":|"
\endmmm
\varA
d8\startTextSpan~ d8\noBeam r16\stopTextSpan
 \bar "|."
}
\addlyrics { По- хва- ля сай, 
ко- \startTextSpan ла- де, ко- ла- де ле, \stopTextSpan Фи- лип ю- нак, 
ко- \startTextSpan ла- де, ко- ла- де ле \stopTextSpan }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 180 8)
		}
	}
}
%
\header{
  opus = "ТД-177,1,11"
  tagline = ##f
}


