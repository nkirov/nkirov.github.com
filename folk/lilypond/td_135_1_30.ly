%{
td_135_1_30
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c'' {
%%\tempo 4 = 168
\time 5/16
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
   \rhythmMarkA \rhyMarkAAdot #"80"
a8 d8. | c8 b16.[( a]) | b8~ b8. | \acciaccatura d8 e~ e\noBeam d16 |
\varA
e8\startTextSpan e16[( d8\stopTextSpan]) | 
\varB
d16\startTextSpan[( c]) b8.\stopTextSpan |
e8 d8.\noBeam | 
\varC
d16\startTextSpan[( c]) b16.[( a\stopTextSpan]) | 
b8~ b8.\noBeam | b8~ b\noBeam d16 |
c8 b8.\noBeam | b8 b8.\noBeam 
 \bar "|." 
s8. \fixB e,8 \fixC 
  \bar "|." 
\set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 5 16)  
 \clef treble
\varA
e'8\startTextSpan e16.[( d\stopTextSpan]) \bar "||"
\varB
c8\startTextSpan b8.\stopTextSpan\noBeam \bar "||"
\varC
c8\startTextSpan b16.[( a\stopTextSpan])
 \bar "|."   
}
\addlyrics { За- мъ- чи се, 
ко- \startTextSpan ла- де, ко- ла- де ле, \stopTextSpan бо- жа май- ка, 
ко- \startTextSpan ла- де, ко- ла- де ле \stopTextSpan }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 80 4)
		}
	}
}
%
\header{
  opus = "ТД-135,1,30"
  tagline = ##f
}


