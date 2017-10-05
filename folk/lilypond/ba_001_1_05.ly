%{
ba_001_1_05
td_113_2_7
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%\tempo 8 = 152
\time 5/16
g8 c8.\noBeam | c16[( b]) a8. | a8~ a8.\noBeam | d8~ d\noBeam c16 |
d8 d[( c16]) | c[( b]) a8. | c8 c8.\noBeam c16[( b]) a8. |
a8~ a8.\noBeam | a8~ a\noBeam g16 | g8 a8.\noBeam a8 a8.\noBeam
 \bar "|." 
}
\addlyrics { Ме- ла~й мо- ма, 
ко- \startTextSpan ла- де, ко- ла- ди ле, \stopTextSpan
рав- но дво- ри,
ко-  \startTextSpan ла- де, ко- ла- ди ле \stopTextSpan }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 152 8)
		}
	}
}
%
\header{
  opus = "ВА-1,1,5 (ТД-113,2,7)"
  tagline = ##f
}


