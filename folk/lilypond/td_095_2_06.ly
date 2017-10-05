%{
TD_95_2_06
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 8 = 168
  \time 9/16
  a8\noBeam a c \acciaccatura {d16[ c]} b8. | d8\noBeam c c16([ b]) \acciaccatura {b16[ c b]} a8. | b8\noBeam c c16.([b32]) \acciaccatura {b16[ c b]} a8. | b8\noBeam a a8\noBeam a8.\fermata
 \bar "|." 
}
\addlyrics { Тръг- нал ми е сви- ти Гьор- ги, 
а- \startTextSpan бре Гьор- ге, сви- ти Гьор- ге \stopTextSpan }
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
		tempoWholesPerMinute = #(ly:make-moment 168 8)
		}
	}
}
%
\header{
  opus = "ТД-95,2,6"
  tagline = ##f
}


