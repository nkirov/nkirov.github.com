%{
td_096_2_12
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c'' {
%%\tempo 16 = 364
%%\tempo 4 = 138
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
  \rhythmMarkA \rhyMarkCdot #"138-144"
\time 3/8
b8\prall c\noBeam( c) | \acciaccatura d8 c16[(^> b]) \acciaccatura { c16[ b] } a8( b\noBeam) |
c32[( b a b]) a8\noBeam~ a | a a\noBeam( b^\rtoe) | 
\break
\time 7/16 c8.\prall c8\noBeam c^\ltoe | c16.([ b]) b8\noBeam b\prall^\ltoe | 
a16[( b8]) a a\noBeam^\ltoe | a8. a8\noBeam~ a^\ltoe 
 \bar "|." 
s8. \fixB d,4
 \bar "|."  
}
\addlyrics { За- бля- ла йе ста- ра вак- ла, 
ру- \startTextSpan до льо, вак- ло льо, ру- до ов- чи- це \stopTextSpan }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 138 4)
		}
	}
}
%
\header{
  opus = "ТД-96,2,12"
  tagline = ##f
}


