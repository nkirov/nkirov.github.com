%{
td_135_2_20
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c'' {
%\tempo 8 = 252
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
  \rhythmMarkA \rhyMarkAAdot #"76"
\time 5/16
\varA
c8\startTextSpan b16\noBeam g8\stopTextSpan | 
a a16[( b8]) | 
\varB
c8\startTextSpan b16\noBeam g8\stopTextSpan | 
a a16[( b8]) | c8 b16\noBeam b8 |
a16[( g]) g\noBeam c8 | b16[( g]) a8. | a8 a8.\noBeam
 \bar "|." 
s8. \fixB a8 \fixC
 \bar "|." 
\set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 5 16)  
 \clef treble
\varA
d8\startTextSpan b16\noBeam g8\stopTextSpan \bar "||"
\varB
c8\startTextSpan c16\noBeam g8\stopTextSpan
 \bar "|."  
}
\addlyrics { По- хва- ли- ла са~й Дой- нин' та май- ка, 
Дой- \startTextSpan ни ле, Доб-  ро льо, \stopTextSpan 
мал- \startTextSpan ка мо- ме \stopTextSpan }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 190 8)
		}
	}
}
%
\header{
  opus = "ТД-135,2,20"
  tagline = ##f
}


