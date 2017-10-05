%{
td_178_2_14
%}

\include "td-preamble.ly"
%\include "Rhythm_marks.ly"

\score {
\relative c' {
\tempo 8 = 160
%\override Score.RehearsalMark #'self-alignment-X = #LEFT
%\once \override Score.RehearsalMark #'X-offset = #8
%  \rhythmMarkA \rhyMarkAAdot #"66"
\time 5/16
d16[( e]) f8. | \acciaccatura f8 g \acciaccatura { g16[ f] } e8.\noBeam |
d8 d8.\noBeam | e16[( d]) c8. | d16[( e]) f16. f\noBeam |
\varA
f16\startTextSpan[( e]) g16. f32.[( e\stopTextSpan]) | 
d8 d8.\noBeam |  d8 d8.\noBeam
 \bar "|." 
\endmmm
\varA
\acciaccatura f8\startTextSpan g\noBeam g16. f32.[( e\stopTextSpan])
\bar "|."
}
\addlyrics { За- ви- ло са~й си- во сук- ле, 
над \startTextSpan гра- да, гра- да ми  
Ца- ри- гра- да \stopTextSpan }
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
  opus = "ТД-178,2,14"
  tagline = ##f
}


