%{
td_097_1_23
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 120
\time 3/4
\override Glissando #'style = #'zigzag
a8([ b]) c4.( d8) | 
\varA
c\startTextSpan [( b]) a4.( \times 2/3 { b16[ a g\stopTextSpan]) } |
a8[( b]) c4 c8[( d]) | c[( \noteFi b^↓]) \glissando a4.( b8) | 
c8[( b]) a2 | a4 a2\fermata
 \bar "|." 
\set Score.measureLength = #(ly:make-moment 1 16)  
\fixB d,16 \fixC 
  \bar "|." 
 s16 \bar "" 
\clef treble
 \set Score.measureLength = #(ly:make-moment 3 4)  
\varA
c'8\startTextSpan[( b]) \afterGrace a4.(\( { \stdB b8\) \stdE } a16[ g\stopTextSpan]) 
\bar "|." 
}
\addlyrics { Зла- тян пръ- стян гре- да под- пи- ра,
 дай \startTextSpan ла- до льо \stopTextSpan }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 120 4)
		}
	}
}
%
\header{
  opus = "ТД-97,1,23"
  tagline = ##f
}


