%{
BA_1_2_16
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
\phrasingSlurDown  
  a4 c |  
  \afterGrace d2\( { \stdB c8\) \stdE } | 
  d4 d8( c) | 
  \afterGrace c2\( { \stdB b8\) \stdE } | 
  a8\noBeam g8 g\noBeam g | a8( b) c( b) | c4~( c8 b) | c4 c8( b) | a2 | a4 a
 \bar "|." 
}
\addlyrics { Гер- ги си сбо- ра съ- би- ра, ма- \startTextSpan ри, \stopTextSpan
Гер- \startTextSpan ги ле, Гер- ге чор- ба- джи  \stopTextSpan }
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
  opus = "ВА-1,2,16"
  tagline = ##f
}


