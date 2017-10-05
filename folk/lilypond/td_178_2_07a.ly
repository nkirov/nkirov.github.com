%{
laz_178_2_07a
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 112
 \time 2/4
 e4 d | e d | e d | c8\noBeam b a\noBeam g | 
\varA 
 c4\startTextSpan d\stopTextSpan | 
\varB 
 \acciaccatura d8\startTextSpan e4 d8( c\stopTextSpan) |
 d2 | d2
 \bar "|." 
\endm 
\varA 
 b8\startTextSpan( c)  d4\stopTextSpan | 
\varB 
 d8\startTextSpan^\ltoe( e^\rtoe) d8( c\stopTextSpan)
   \bar "|." 
}
\addlyrics { Чуж- ди дре- хи но- сиш, 
Я- \startTextSpan не ма- ри, \stopTextSpan 
чуж- ди бра- то- ви- ни }
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
		tempoWholesPerMinute = #(ly:make-moment 112 4)
		}
	}
}
%
\header{
  opus = "ТД-178,2,7a"
  tagline = ##f
}


