%{
td_112_1_15
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 8 = 252
\time 3/8
d8 d[( c]) | d e4 | d8 c[( b]) | g16[( a]) c4 | b8 a8.[( g16]) | c[( d]) c4 |
\break
d8 d\noBeam c | d e4 | d8 c[( b]) | g16[( a]) c4 | b8 a4 a8 a\noBeam r
 \bar "|." 
s8. \fixB g8 s16
 \bar "|."  
}
\addlyrics { Под- ра- ни- ла мал- ка мо- ма, 
ко- \startTextSpan ла- де ле, \stopTextSpan
су- \startTextSpan трин ми \stopTextSpan ра- \startTextSpan но
та в'ни- де- ля ко- ла- де ле \stopTextSpan }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 252 8)
		}
	}
}
%
\header{
  opus = "ТД-112,1,15"
  tagline = ##f
}


