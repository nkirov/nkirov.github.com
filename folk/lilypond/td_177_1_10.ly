%{
td_177_1_10
%}

\include "td-preamble.ly"
%\include "Rhythm_marks.ly"

\score {
\relative c'' {
\tempo 8 = 160
%\override Score.RehearsalMark #'self-alignment-X = #LEFT
%\once \override Score.RehearsalMark #'X-offset = #8
%  \rhythmMarkA \rhyMarkAAdot #"66"
\time 5/16
g16^>[( f]) f8. | f16^>[( e]) d8. | 
\varA
c8\startTextSpan d[( e16\stopTextSpan]) | 
f8 g16.[( f]) | g16^>[( f]) f8. |
\break
f16^>[( e]) d8. | c8 d8. | d8^"За повторение" d-\parenthesize\prall[( c16]) 
 \bar ":|" 
d8^ "За край"d8.\noBeam 
\bar "|."
\endmmm
\varA
c8\startTextSpan d8.\stopTextSpan\noBeam
\bar "|."
}
\addlyrics { Съ- бра- ли сай, 
ко- \startTextSpan ла- де ле, \stopTextSpan съ- бор мом- ци, 
ко- \startTextSpan ла- де ле \stopTextSpan 
де \startTextSpan ле \stopTextSpan }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 160 8)
		}
	}
}
%
\header{
  opus = "ТД-177,1,10"
  tagline = ##f
}


