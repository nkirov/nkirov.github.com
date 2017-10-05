%{
td_135_2_03
%}

\include "td-preamble.ly"
%\include "Rhythm_marks.ly"

\score {
\relative c'' {
\tempo 8 = 252
\time 3/8
c4 b8 | c8 a4 | b a8 | 
\varA
a\startTextSpan g^\ltoe[( a\stopTextSpan^\rtoe]) | 
a4( b8) | \acciaccatura c8 d d16\noBeam b8. |
\varB
c4\startTextSpan b8\stopTextSpan | 
\varC
c\startTextSpan a4\stopTextSpan | 
b a8 | 
\varA
a\startTextSpan g^\ltoe[( a\stopTextSpan^\rtoe]) | 
a4. | a8 a16\noBeam a8. 
 \bar "|." 
s8 \fixB g4 \fixC
  \bar "|." 
\set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 3 8)  
 \clef treble
\varA
a8\startTextSpan g16[( a8.\stopTextSpan]) \bar "||"
\varB
c4\startTextSpan d8\stopTextSpan \bar "||"
\varC
c16\startTextSpan[( b]) a4\stopTextSpan 
 \bar "|."   
}
\addlyrics { За- ви- ло са си- во ор- ле, 
ко- \startTextSpan ла- де ле, \stopTextSpan
над \startTextSpan ца- рьо- ви, \stopTextSpan
над \startTextSpan са- ра- и, ко- ла- де ле \stopTextSpan }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 252 8)
		}
	}
}
%
\header{
  opus = "ТД-135,2,3"
  tagline = ##f
}


