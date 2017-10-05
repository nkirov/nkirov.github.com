%{
td_095_2_07
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 144
\time 3/4
\varA
fis8\startTextSpan[( g]) g2\stopTextSpan | 
a16.[( b32 a16 g]) g8.[( a16 g8 f]) | e8[( f]) f[( g]~ g4) |
\times 4/5 { f16[( g f e f]) } e4.( f8) | g4 g2 | a16[( b a g]) g2\fermata
 \bar "|." 
\set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar "" 
\clef treble
 \set Score.measureLength = #(ly:make-moment 3 4)  
\varA
f!8\startTextSpan[( g]) g2\stopTextSpan
\bar "|." 
}
\addlyrics { Сед- ни бул- ка, дай пръ- сте- на,
 тъй, \startTextSpan ла- до льо \stopTextSpan }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 104 4)
		}
	}
}
%
\header{
  opus = "ТД-95,2,07"
  tagline = ##f
}


