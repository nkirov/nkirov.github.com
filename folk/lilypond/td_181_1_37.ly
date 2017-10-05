%{
td_181_1_37
%}

\include "td-preamble.ly"
%\include "Rhythm_marks.ly"

\score {
\relative c'' {
\tempo 8 = 220
%\override Score.RehearsalMark #'self-alignment-X = #LEFT
%\once \override Score.RehearsalMark #'X-offset = #8
%  \rhythmMarkA \rhyMarkAAdot #"66"
\time 7/16
\varA
g8.\startTextSpan \acciaccatura g8 a\noBeam~ a\stopTextSpan | 
a16.[( g]) a8\noBeam~ a | 
\varB
g16.\startTextSpan[( f]) e8\noBeam c\stopTextSpan |
d8. d4 | \acciaccatura f8 g8. g8\noBeam  g |
g16.[( f]) g8 f16[( e]) | d16.[( c]) d8\noBeam~ d | d8. d8\noBeam r8
 \bar "|." 
s8. \fixB g,4 \fixC
 \bar "|." 
\endmm
\varA
g'16.\startTextSpan[( a]) a8\noBeam a\stopTextSpan \bar "||"
\varB
g8.\startTextSpan f16[( e]  c8\stopTextSpan)
\bar "|."  
}
\addlyrics { Из- ве- ла е ху- ба- ва Де- на, 
Де- \startTextSpan но льо, Ден- ке ле, \stopTextSpan 
мал-  \startTextSpan ка мо- ме \stopTextSpan }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 220 8)
		}
	}
}
%
\header{
  opus = "ТД-181,1,37"
  tagline = ##f
}


