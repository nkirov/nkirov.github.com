%{
td_171_1_04
%}

\include "td-preamble.ly"
%\include "Rhythm_marks.ly"

\score {
\relative c' {
\tempo 8 = 126
%\override Score.RehearsalMark #'self-alignment-X = #LEFT
%\once \override Score.RehearsalMark #'X-offset = #8
%  \rhythmMarkA \rhyMarkAAdot #"66"
\time 5/16
d16 e\noBeam f-\parenthesize\prall[( e f]) | e[( d]) c8. | 
d16 e\noBeam f-\parenthesize\prall[( e f]) | e[( d]) d8. |
d8 d8.\noBeam f8 g8.\noBeam | d16 e\noBeam f-\parenthesize\prall[( e f]) | 
e d\noBeam c8. |
d16 e\noBeam f\prall[( e f]) | \acciaccatura f8 e d8.\noBeam |
c16[( d]) d8. | d8 d\prall[( c16]) 
 \bar "|." 
\endmmm
d8^"За край" d8.\noBeam
  \bar "|." 
}
\addlyrics { По- хва- ли- ла са~й Би- ня- на бу- ля, 
ко- \startTextSpan ла- де ле, \stopTextSpan
бя- \startTextSpan ло льо, \stopTextSpan
Би- \startTextSpan но льо, бя- ло граж- дан- че, ко- ла- де ле \stopTextSpan }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 126 8)
		}
	}
}
%
\header{
  opus = "ТД-171,1,4"
  tagline = ##f
}


