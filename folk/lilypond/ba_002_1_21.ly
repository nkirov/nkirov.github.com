%{
BA_2_1_21
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
\varA  
a4\startTextSpan c\stopTextSpan | 
\acciaccatura c8 d4.( c16[ b]) | 
\varB
d4\startTextSpan d8( c\stopTextSpan) | 
c8.( d16 \times 2/3 {d8 [c b])} | a8\noBeam g g8\noBeam g | 
\varC
a8\startTextSpan( g) c4\stopTextSpan | 
\varD
c8\startTextSpan c4( b8\stopTextSpan) |
\parS
a2-\parenthesize\fermata | a8 a4. | a4 r4
 \bar "|." 
\endm
\varA
a4\startTextSpan a\stopTextSpan \bar "||" 
\varC
a8\startTextSpan( g) a( b\stopTextSpan) 
\bar "|." 
}
\addlyrics { Рай- на "в ло-" зя- та о- ти- ва, 
ма- \startTextSpan ри, \stopTextSpan
Рай- на "в ло-" зя- та о- ти- ва }
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
  opus = "ВА-2,1,21"
  tagline = ##f
}


