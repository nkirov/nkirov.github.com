%{
td_135_2_19
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c'' {
%\tempo 8 = 252
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
  \rhythmMarkA \rhyMarkAAdot #"88"
\time 5/16
\varA
a8\startTextSpan e8.\stopTextSpan\noBeam | 
a8 b16.[( a]) | a8\mordent(~ a16.[ g]) | a8 b8.\noBeam | a8 a16.[( g]) |
g8 a8.\noBeam | 
\varB
a8\startTextSpan g8.\stopTextSpan\noBeam | 
\varC
f8\startTextSpan e16.[( d\stopTextSpan]) | 
e8~ e8.\noBeam | g8 \acciaccatura a g16.[( f^"↑"]) |
d8 e8.\noBeam | e8 e8.\noBeam
 \bar "|." 
s8. \fixB gis8 \fixC
 \bar "|." 
\set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 5 16)  
 \clef treble
 \varA
g8\startTextSpan e8.\stopTextSpan\noBeam \bar "||"
\varB
a8\startTextSpan \acciaccatura a8 g8.\stopTextSpan\noBeam  \bar "||" 
\varC
f8\startTextSpan e8.\stopTextSpan\noBeam
 \bar "|."  
}
\addlyrics { По- фа- ля са, 
Дой- \startTextSpan ни ле, ко- ла- ди ле, \stopTextSpan мал- ка мо- ма, 
мом- \startTextSpan ни ле, ко- ла- ди ле \stopTextSpan }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 220 8)
		}
	}
}
%
\header{
  opus = "ТД-135,2,19"
  tagline = ##f
}


