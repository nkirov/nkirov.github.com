%{
td_134_2_02
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c'' {
%\tempo 8 = 252
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
  \rhythmMarkA \rhyMarkAdotAA #"52"
\time 7/16
\varA
d8.\startTextSpan d8\noBeam c\stopTextSpan | 
\varB
d8.\startTextSpan e8[( d\stopTextSpan]) | 
c8. b8\noBeam a | 
\varC
a8.\startTextSpan \acciaccatura c8 d4\stopTextSpan |
c16.[( b]) a4 | b8. c8[( b]) g8. a4 | a8. a4
 \bar "|."
s8. \fixB fis4 \fixC
 \bar "|." 
\set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 7 16)  
 \clef treble
\varA
d'8.\startTextSpan d16\noBeam c8.\stopTextSpan \bar "||"
\varB
d8.\startTextSpan e16[( d8.\stopTextSpan]) \bar "||"
\varC
a16.\startTextSpan[( b]) c8[( d\stopTextSpan]) 
 \bar "|."  
 }
\addlyrics { Бре, за- зо- ри се, бре, яс- на зо- ра 
из \startTextSpan ху- ба- ва \stopTextSpan 
Влаш- \startTextSpan ка зе- мя \stopTextSpan }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 182 8)
		}
	}
}
%
\header{
  opus = "ТД-134,2,2"
  tagline = ##f
}


