%{
td_112_1_13
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 8 = 200
\time 3/8
e8 d\noBeam e | d16[( c]) d4 | d16[( c]) b8 b\noBeam | b c4 |
b8 a4 | \acciaccatura b8 c16[( d]) e4 | e16[( d]) \acciaccatura d8 e4 |
e16[( d]) d16\noBeam d8. |
e16[( d]) c16 c8.\noBeam | b8\mordent c4 | b8 a4 | a8 a4
 \bar "|." 
s8 \fixB fis4 
 \bar "|."  
}
\addlyrics { Про- вик- на- ла съ~й Йен- ки- на ма- ма,
ко-  \startTextSpan ла- ди ле, \stopTextSpan
на  \startTextSpan злъ, \stopTextSpan
Йен- \startTextSpan ки ле, Гюл- гю- люм гра- да, ко- ла- ди ле \stopTextSpan }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 200 8)
		}
	}
}
%
\header{
  opus = "ТД-112,1,13"
  tagline = ##f
}


