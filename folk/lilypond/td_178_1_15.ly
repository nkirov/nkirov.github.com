%{
laz_178_1_15
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 132
 \time 2/4
d4 g | d2 | g4 f8( g) | f4 e | d2 | d8( c) d( e) | 
\varA
f4.\startTextSpan( e8\stopTextSpan) | 
\varB
d8\startTextSpan( e) d4\stopTextSpan | 
c d | d2
 \bar "|." 
\endm
\varA
f4\startTextSpan( g16[ f e8\stopTextSpan)]  \bar "||"
\varB
e4\startTextSpan^\ltoe d4\stopTextSpan 
 \bar "|." 
}
\addlyrics { Ник- на- ла злат- на я- бъл- ка, 
я- \startTextSpan бъл- ко, злат- на я- бъл- ко \stopTextSpan }
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
		tempoWholesPerMinute = #(ly:make-moment 132 4)
		}
	}
}
%
\header{
  opus = "ТД-178,1,15"
  tagline = ##f
}


