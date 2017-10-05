%{
kav_139_2_16
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 116
 \time 2/4
a2 | \acciaccatura d8 e4 e | d8( e) d( c) | c( d) d( e) | d2 |
\acciaccatura { c16[ b a] } c4.( d8) | d4 c8( b) | d( c) c( b) | a8 a4. | a2
 \bar "|." 
 s4 \fixB c, 
  \bar "|." 
}
\addlyrics { И- мал е Сто- ян, Сто- я- не, 
Сто- \startTextSpan я- не, ле- лин Сто- я- не \stopTextSpan }
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
		tempoWholesPerMinute = #(ly:make-moment 116 4)
		}
	}
}
%
\header{
  opus = "ТД-139,2,16"
  tagline = ##f
}


