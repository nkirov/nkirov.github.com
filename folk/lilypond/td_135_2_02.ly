%{
td_135_2_02
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c'' {
%\tempo 4 = 168
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
  \rhythmMarkA \rhyMarkAAdot #"66"
\time 5/16
\varA
g16\startTextSpan[( a]) b8.\stopTextSpan | 
\varB
d8\startTextSpan b8.\stopTextSpan | 
d16[( a]) b8. | a16[( g]) g8. |
a8 \acciaccatura b8 c8. | c16[( b]) b8. | b16[( a]) a8. a16[( g]) g8.  
 \bar "|." 
s8 \fixB g8 s16 \fixC
 \bar "|." 
\set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 5 16)  
 \clef treble
\varA
g16\startTextSpan[( a]) b16.[( c\stopTextSpan]) \bar "||" 
\varB
d16\startTextSpan[( c]) c8.\stopTextSpan
 \bar "|."  
}
\addlyrics { Про- чул ми са~й Ка- ят зен- гин, 
Ми- \startTextSpan ха- и- ле, \stopTextSpan 
Ир- \startTextSpan хан- ги- ле \stopTextSpan }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 165 8)
		}
	}
}
%
\header{
  opus = "ТД-135,2,2"
  tagline = ##f
}


