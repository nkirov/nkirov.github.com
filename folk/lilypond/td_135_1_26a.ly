%{
td_135_1_26a
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 168
\time 2/4
\parS
c4 d8[( c]) | b[( c b-\parenthesize\prall g]) | a4 a 
\bar ":|" 
c8 c4. | \acciaccatura c8-\parenthesize\prall b4.( a8) | c4 bes8 bes\noBeam | bes[( a]) a[( g]) |
g2 | g4 g
 \bar "|." 
s4 \fixB ees
 \bar "|."  
}
\addlyrics { Ро- си- ца ро- си, ти \startTextSpan рой, рой, рой- но ле, ти, ру- са ко- са \stopTextSpan }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 168 4)
		}
	}
}
%
\header{
  opus = "ТД-135,1,26"
  tagline = ##f
}


