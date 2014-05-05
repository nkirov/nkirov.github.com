%{
ba_001_1_28
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%\tempo 8 = 152
\time 5/16
d8 c16[( b g]) | d'8 c16.[( b]) | a8 a8.\noBeam | b16[( c]) d16.[( c]) | 
d8 c16[( b g]) | d'16[( c]) c16.[( b]) | a8 a8.\noBeam | a8 a8.\noBeam 
 \bar "|." 
}
\addlyrics { О- гря- ла йе, 
ко- \startTextSpan ла- ди ле, \stopTextSpan Ти- ра зви- зда, 
ко- \startTextSpan ла- ди ле \stopTextSpan }
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
  opus = "ВА-1,1,28"
  tagline = ##f
}


