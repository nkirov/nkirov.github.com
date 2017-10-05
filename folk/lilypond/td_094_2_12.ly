%{
laz_094_2_12
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 152
\time 2/4
b4 b8( c) | \acciaccatura c8 b( a)  a4 | \acciaccatura a8 b4.( c8) | \acciaccatura c8 b( a4.) |
b4 b8( a) | a4 a | 
\varA
b\startTextSpan b8( a\stopTextSpan) | 
a4 a | 
\varB
\acciaccatura a8\startTextSpan b2\stopTextSpan | 
b | b\fermata
 \bar "|." 
 s4 \fixB cis, \fixC
 \bar "|." 
 \endm
 \varA
b'4\startTextSpan b8\noBeam a\stopTextSpan \bar "||"
\varB
\acciaccatura a8\startTextSpan b4( c\stopTextSpan\mordent)
 \bar "|." 
}
\addlyrics { За- спа- ло ми~й ди- тен- це, 
Ла- \startTextSpan за- ре, \stopTextSpan за- спа- ло ми~й ди- тен- це }
%
\layout {
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
		\Score
		tempoWholesPerMinute = #(ly:make-moment 152 4)
		}
	}
}
%
\header{
  opus = "ТД-94,2,12"
  tagline = ##f
}


