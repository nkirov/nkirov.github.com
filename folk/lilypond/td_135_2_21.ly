%{
td_135_2_21
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c'' {
%\tempo 8 = 252
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
  \rhythmMarkA \rhyMarkAAdot #"69"
\time 5/16
\acciaccatura c8 d d16.[( c]) | b16[( a]) b8. | a16[( a]) g8. | 
a16[( b]) b16.^\ltoe[( a^\rtoe]) | a8 \acciaccatura b c8.\noBeam | b16[( a]) b8. | 
a16[( g]) g8. | g8\noBeam g8.
 \bar "|." 
s8. \fixB g8
 \bar "|."  
}
\addlyrics { Ра- но ра- ни Ка- лин мо- ма, 
Ка- \startTextSpan ли- но льо, Ка- лин- чи- це \stopTextSpan }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 172 8)
		}
	}
}
%
\header{
  opus = "ТД-135,2,21"
  tagline = ##f
}


