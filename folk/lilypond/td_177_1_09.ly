%{
td_177_1_09
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
g16[( a]) a8. | g16[( f]) g8. | 
\varAB
e16\startTextSpan[( c]) d8[( e16\stopTextSpan]) | 
f8 f8.\noBeam |
\parS
g16[( a]) a8. | g16[( f]) g8. | f16[( e]) d8. | 
d8 d-\parenthesize\prall[( c16])
 \bar "|." 
\endmmm
\varA
e16\startTextSpan[( d]) d8[( e16\stopTextSpan]) \bar "||"
\varB
e16\startTextSpan[( d]) d16.\noBeam e\stopTextSpan \bar "||"
d8^"За край" d8.\noBeam
 \bar "|."  
}
\addlyrics { На стол се- ди Бог- дан ю- нак, 
Бог- \startTextSpan да- не ле, \stopTextSpan 
ко- \startTextSpan ла- де ле \stopTextSpan
" " " " си- не Бог- }
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
  opus = "ТД-177,1,9"
  tagline = ##f
}


