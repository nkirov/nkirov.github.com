%{
laz_096_2_22
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 160
 \time 2/4
 \phrasingSlurDown
\varA
 c4\startTextSpan c\stopTextSpan | 
 b c | \acciaccatura c8 b4( \grace { \stdB c8\( \stdE } b\) a) | 
\acciaccatura b8 c4 c |  
\varB
\acciaccatura c8\startTextSpan b4( \grace { \stdB c8\( \stdE } b\) a\stopTextSpan) | 
\acciaccatura b8 c4 c | b c | 
\varC
\acciaccatura a8\startTextSpan b4.( a8\stopTextSpan) | 
g4 g | g2
 \bar "|." 
 s4 \fixB c, \fixC
\bar "|."
\endm
\varA
 b'4\startTextSpan c\stopTextSpan  \bar "||" 
\varB
\set Score.measureLength = #(ly:make-moment 3 4)
s4\startTextSpan b2\stopTextSpan \bar "||" 
\set Score.measureLength = #(ly:make-moment 2 4)
\varC
\acciaccatura a8\startTextSpan b4\( \acciaccatura c8 b a\stopTextSpan\)
\bar "|."
}
\addlyrics { Сно- щи си до- де млад Ва- ньо, 
Ва- \startTextSpan ньо льо, ва- \stopTextSpan 
къл \startTextSpan ка- ра- гьоз \stopTextSpan }
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
		tempoWholesPerMinute = #(ly:make-moment 160 4)
		}
	}
}
%
\header{
  opus = "ТД-96,2,22"
  tagline = ##f
}


