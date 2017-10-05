%{
td_133_2_11
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 8 = 216
\time 3/8
d8 c\noBeam c | 
\varA
c16\startTextSpan[( b]) b[( a8. \stopTextSpan]) | 
g8 a\noBeam b | c d4 |
d16[( c]) d8 c\noBeam | 
\break
c16[( b]) b[( a8.]) | d8 a\noBeam a | a a4 
 \bar "|." 
s8 \fixB e4 \fixC
  \bar "|." 
\set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 3 8)  
 \clef treble  
\varA
d'32\startTextSpan[( c16.]) b16[( a8. \stopTextSpan])
 \bar "|." 
}
\addlyrics { По- хва- ли- ла са До- бри- на май- ка, 
йой, \startTextSpan Доб- ро, \stopTextSpan 
Доб- \startTextSpan ро, ху- ба- ва Доб- ро \stopTextSpan }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 216 8)
		}
	}
}
%
\header{
  opus = "ТД-133,2,11"
  tagline = ##f
}


