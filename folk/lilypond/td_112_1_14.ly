%{
td_112_1_14
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 8 = 120
\time 3/8
d8 e8.[( d16]) | 
\varA
d8\startTextSpan a4\stopTextSpan | d16 d\noBeam e8.[( d16]) | c16 d\noBeam a4 |
c16[( b]) a4 | a16 g\noBeam c4 | b8 a4 | a16 a\noBeam a8 r
 \bar "|." 
s4 \fixB g8 \fixC
  \bar "|." 
\set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 3 8)  
 \clef treble  
\varA
c16\startTextSpan[( d]) a4\stopTextSpan
  \bar "|."  
}
\addlyrics { По- цви- лел и Пав- ли кон, зи- лен кон, 
ей, \startTextSpan ко- ла- ди ле,
мой ко- ла- ди ле \stopTextSpan }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 120 8)
		}
	}
}
%
\header{
  opus = "ТД-112,1,14"
  tagline = ##f
}


