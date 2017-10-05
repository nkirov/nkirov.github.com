%{
TD_140_2_17
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 152
  \time 2/4
\varA 
 b8\startTextSpan( a) b8( c\stopTextSpan) |
 b4.( a8) | b4 c | b4.( a8) |
\varB 
 b4\startTextSpan g\stopTextSpan |
 a8( g) a4 | b4.( a8) |
\varC
 b\startTextSpan( a) a8( g\stopTextSpan) |
 \time 3/4 g2. \time 2/4 g4 g\fermata
 \bar "|." 
 s4 \fixB g4 \fixC  
 \bar "|."
\endm
\varA 
 b4\startTextSpan c\stopTextSpan \bar "||"
\varB
b8\startTextSpan( a) g4\stopTextSpan \bar "||"
\varC
 b4\startTextSpan a8( g\stopTextSpan)
\bar "|."
}
\addlyrics { За- гра- дил Па- вльо кю- прий- ка, 
Пав- \startTextSpan ле ле, дюл- ге- \stopTextSpan 
ри- \startTextSpan не ле \stopTextSpan }
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
  
%%   ragged-last = ##t
}
%
\midi { 
	\context {
		\Score
		tempoWholesPerMinute = #(ly:make-moment 152 4)
		}
	}
}

\header{
  opus = "ТД-140,2,17"
  tagline = ##f
}


