%{
ba_001_1_02
td_113_2_3
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%\tempo 8 = 152
\time 5/16
a8 e'[( d16]) | d8 a8.\noBeam | d8 d[( c16]) | c[( b]) a8. | g8 a16.\noBeam b |
c8 c16.\noBeam c | d8 e16.\noBeam d | d8 a8.\noBeam | 
\varA
d8\startTextSpan d\noBeam c16\stopTextSpan |
c[( b]) a8. | g8 a8.\noBeam | a8 a8.\noBeam 
 \bar "|." 
 \endmmm
\varA
g8\startTextSpan d'16.\noBeam c\stopTextSpan 
 \bar "|." 
}
\addlyrics { Тъ- ка мо- ма тън- ко да- ри, 
Вла- \startTextSpan ди но, мом- ни ле, ни вре- да, \stopTextSpan 
вре-  \startTextSpan да, ни в'но- ва гра- да, ко- ла- ди ле \stopTextSpan }
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
  opus = "ВА-1,1,2 (ТД-113,2,3)"
  tagline = ##f
}


