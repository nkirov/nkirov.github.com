%{
ba_001_1_31
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%\tempo 8 = 152
\time 7/16
d8. b4 | b8. b8[( a]) | d8. a8\noBeam a | g16.[( fis]) e4 | 
\varA
fis8.\startTextSpan g8\noBeam a\stopTextSpan |
a8. g8\noBeam fis | e8. e4 | e8. e4
 \bar "|." 
\endmm
\varA
g8.\startTextSpan g8\noBeam a\stopTextSpan 
 \bar "|." 
}
\addlyrics { По- хва- ля са Ви- дя- на бу- ля, 
Ви- \startTextSpan до льо, мом- ни ле, ко- ла- ди ле \stopTextSpan }
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
  opus = "ВА-1,1,31"
  tagline = ##f
}


