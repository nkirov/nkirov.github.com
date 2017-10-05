%{
ba_001_1_30
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%\tempo 8 = 152
\time 5/16
d8 c8.\noBeam | d8 e8.\noBeam | e8(~ e16.[ d]) | e8~ e16.\noBeam d | d8 c16.[( b]) |
d8 d8.\noBeam | e8 c8.\noBeam | 
\varA
c8\startTextSpan b8.\stopTextSpan\noBeam | 
a8(~ a16.[ g]) | 
c8~ c16.\noBeam b | g8 a8.\noBeam a8 a8.\noBeam
 \bar "|." 
 \endmmm
\varA
c8\startTextSpan c16.[( b\stopTextSpan\noBeam])
 \bar "|." 
}
\addlyrics { За- сви- вал са~й, 
Дой- \startTextSpan ни ле, ко- ла- ди ле, \stopTextSpan
сив бял со- кол, 
мом- \startTextSpan ни ле, ко- ла- ди ле \stopTextSpan }
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
  opus = "ВА-1,1,30"
  tagline = ##f
}


