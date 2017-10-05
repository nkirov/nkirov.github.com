%{
td_136_1_07a
%}

\include "td-preamble.ly"
%\include "Rhythm_marks.ly"

\score {
\relative c'' {
\tempo 8 = 196
%\override Score.RehearsalMark #'self-alignment-X = #LEFT
%\once \override Score.RehearsalMark #'X-offset = #8
%  \rhythmMarkA \rhyMarkAAdot #"66"
\time 7/16
\varA
a16.\startTextSpan[( g]) g16[( f e d\stopTextSpan]) | 
\varB
f\startTextSpan[( e d]) d8~ d\stopTextSpan\noBeam | 
c8. d8(\noBeam e) |
f8. f8\noBeam~ f | a16.[( g]) \acciaccatura f g16[( f e d]) | 
f16.[( e]) d8~\noBeam d | c16[( d8]) d\noBeam~ d d8. d8\noBeam~ d
 \bar "|." 
s8. \fixB g,4 \fixC
 \bar "|." 
\endmm
\varA
a'16.\startTextSpan[( g]) \acciaccatura f8 g( f16[ e\stopTextSpan]) \bar "||"
\varB
f16.\startTextSpan[( e]) d8~ d\stopTextSpan\noBeam
  \bar "|." 
}
\addlyrics { По- ма- мял си, 
ко- \startTextSpan ла- де ле, \stopTextSpan ди- ли  На- но, 
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
		\Score tempoWholesPerMinute = #(ly:make-moment 196 8)
		}
	}
}
%
\header{
  opus = "ТД-136,1,7"
  tagline = ##f
}


