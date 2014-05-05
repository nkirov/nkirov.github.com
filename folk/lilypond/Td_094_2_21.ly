%{
td_094_2_21
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 8 = 144
\time 3/8
a8\noBeam \acciaccatura a b4 | 
\varA
\acciaccatura b8\startTextSpan c\noBeam c16([ a c a]) | c8 a4\stopTextSpan | 
c16[( a]) \acciaccatura { b16[ a] } g4 | a16\noBeam a\noBeam( b8.[ c16]) |
b8 b4 
 \bar "|." 
\set Score.measureLength = #(ly:make-moment 1 16)  
\fixB e,16 \fixC 
  \bar "|." 
 s16 \bar "" 
\clef treble
 \set Score.measureLength = #(ly:make-moment 3 8)  
\varA
\acciaccatura b'8\startTextSpan c\noBeam c16([ a8.]) | c8\noBeam a8[( b16 a\stopTextSpan]) | 
\bar "|." 
}
\addlyrics {Стой, чи- сти- то и ви- ли- ко,
 дай, \startTextSpan ла- до льо \stopTextSpan }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 144 8)
		}
	}
}
%
\header{
  opus = "ТД-94,2,21"
  tagline = ##f
}


