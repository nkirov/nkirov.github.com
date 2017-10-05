%{
TD_138_01_14
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 126
 \time 2/4
% \tempo 8 = 168
% \time 7/16
d4. e8 | \acciaccatura e8 d4 b | d c | b8 a\noBeam b c\noBeam | 
d4. e8 | \acciaccatura e8 d4 b | d c | b2 | b2\fermata
 \bar "|." 
s4 \fixB d,4 \fixC
  \bar "|." 
}
\addlyrics { Ле- ле, Я- но, ле- ле, пи- ле, 
ма- \startTextSpan ри, \stopTextSpan ле- ле, Я- но, ле- ле, пи- ле }
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
		tempoWholesPerMinute = #(ly:make-moment 126 4)
		}
	}
}
%
\header{
  opus = "ТД-138,1,14"
  tagline = ##f
}


