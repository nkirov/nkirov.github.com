%{
ba_001_1_33
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%\tempo 8 = 152
\time 5/16
c8 c16.\noBeam d | d8 d8.\noBeam | c16[( b]) a8. | c8 c16.\noBeam d | d8 d[( c16]) |
c16[( b]) a8. | c8 c16.\noBeam d | a8 a8.\noBeam | c8 c16.\noBeam d | d8 c16.\noBeam b |
a8 a8.\noBeam | a8 a8.\noBeam
 \bar "|." 
}
\addlyrics { Да- \startTextSpan ни ле, \stopTextSpan за- бяг- на- ли, 
брай- \startTextSpan ни ле, \stopTextSpan два- ма бра- тя, 
Да- \startTextSpan ни ле, дал Бог, Дай- ни ле, брай- ни ле, ко- ла- ди ле \stopTextSpan }
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
  opus = "ВА-1,1,33"
  tagline = ##f
}


