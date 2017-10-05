%{
td_181_1_44
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c' {
%\tempo 8 = 200
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
  \rhythmMarkA \rhyMarkABdot #"60"
\time 7/16
\varA
e16.\startTextSpan[( d]) c8~ c\stopTextSpan\noBeam | 
\varB
e16.\startTextSpan[( f]) g16[( f] e8\stopTextSpan) | 
e16.[( d]) c8~ c\noBeam |
e16.[( f]) g4 | 
g16.[( f]) g8 f16[( e]) | d16.[( c]) c8~ c\noBeam e16.[( f]) g8~ g\noBeam |
g16.[( f]) g8 f16[( e]) |
\varC
d16.\startTextSpan[( c]) d8~ d\stopTextSpan\noBeam | 
d8. d8\noBeam r
 \bar "|." 
s8. \fixB s4 \fixC
  \bar "|." 
\endmm
\varA
e8.\startTextSpan c8~ c\stopTextSpan\noBeam \bar "||"
\varB
d16.\startTextSpan[( e]) f8( e\stopTextSpan)\noBeam \bar "||"
\varC
c8.\startTextSpan d8~ d\stopTextSpan\noBeam
 \bar "|." 
}
\addlyrics { Лам- бан Доб- ри кон ко- ве- ше, 
Доб- \startTextSpan ре ле, Дан, мой Доб- ре, \stopTextSpan 
Доб- \startTextSpan ре ле, мой ко- ла- де \stopTextSpan }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 210 8)
		}
	}
}
%
\header{
  opus = "ТД-181,1,44"
  tagline = ##f
}


