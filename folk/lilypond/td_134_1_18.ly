%{
td_134_1_18
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c'' {
%\tempo 8 = 200
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
  \rhythmMarkA \rhyMarkAdotAA #"72"
\time 7/16
\override Glissando #'style = #'zigzag
d8. d8\noBeam e | d16.[( c]) b16[( a b c]) | d8. d4 | d8. d8\noBeam e |
\varA
d16.\startTextSpan[( c]) b16[( a b c\stopTextSpan]) | 
\break
d16.[( c]) b8[( a]) | b16.[( c]) d8 c\noBeam |
\varB
\noteFi b8.\startTextSpan\glissando g8\noBeam g\stopTextSpan | 
d'16.[( c]) b8[( a]) |
\varC
\set Score.measureLength = #(ly:make-moment 8 16)
\noteFi \hideNotes a16\startTextSpan\glissando \unHideNotes d8. d8\noBeam c\stopTextSpan |
\set Score.measureLength = #(ly:make-moment 7 16)
\noteFi b8.\glissando g4 | g8. g4 
 \bar "|." 
s8. \fixB e4 \fixC
 \bar "|." 
\set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 7 16)  
 \clef treble
\varA
d'16.\startTextSpan[( c]) b8 c\stopTextSpan\noBeam \bar "||"
\varB
b16.\startTextSpan[( a]) g8 g\stopTextSpan \bar "||"
\varC
b16.\startTextSpan[( c]) d8\noBeam c\stopTextSpan 
 \bar "|."  
}
\addlyrics { Да- \startTextSpan не ле, \stopTextSpan за- гла- ви са, 
брай- \startTextSpan не ле, \stopTextSpan за- же- ни са,
Да- \startTextSpan не ле, дал бог, Да- не ле, \stopTextSpan " " 
брай- \startTextSpan не ле, \stopTextSpan 
ко-  \startTextSpan ла- де ле \stopTextSpan }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 126 4)
		}
	}
}
%
\header{
  opus = "ТД-134,1,18"
  tagline = ##f
}


