%{
td_135_2_18
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c'' {
%\tempo 8 = 252
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
  \rhythmMarkA \rhyMarkAAdot #"84"
\time 5/16
d16[( e]) e8. | 
\varA
e8\startTextSpan e[( d16\stopTextSpan]) | 
\varB
e8\startTextSpan d16.[( c\stopTextSpan]) | 
\varC
d16\startTextSpan[( e]) e16.[( d\stopTextSpan]) |
d8~ d16.[( c]) | 
\varD
c8\startTextSpan c16.[( b\stopTextSpan]) | 
g8 a16.[( b]) | c8 d8.\noBeam |
\parS
d8-\parenthesize^"↑" (~ d16.[ c]) | c8 c16.[( b]) | 
g8 a8.\noBeam | a8 a8.\noBeam
 \bar "|." 
s8. \fixB bes8 \fixC
 \bar "|." 
\set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 5 16)  
 \clef treble 
 \varA
e8\startTextSpan e8.\stopTextSpan \bar "||" 
\varB
d16\startTextSpan[( e]) d16.[( c\stopTextSpan])  \bar "||" 
\varC
d8\startTextSpan e16.[( d\stopTextSpan])  \bar "||" 
\varD
\acciaccatura b8\startTextSpan c c16.[( b\stopTextSpan])
\bar "|."  
}
\addlyrics { Се- ди мо- ма юв гра- дин- ка, 
Дой- \startTextSpan ни ле, ко- ла- ди ле,
мом- \stopTextSpan ни \startTextSpan ле, ко- ла- ди ле \stopTextSpan }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 210 8)
		}
	}
}
%
\header{
  opus = "ТД-135,2,18"
  tagline = ##f
}


