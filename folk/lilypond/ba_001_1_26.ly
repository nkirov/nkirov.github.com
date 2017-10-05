%{
ba_001_1_26
%}

\include "td-preamble.ly"

\score {
\relative c''' {
%\tempo 8 = 152
\time 5/16
\varA
g8\startTextSpan e16.\noBeam e | e8 e[( d16]) | d8 d8.\stopTextSpan\noBeam | 
c8 c[( b16]) | g8 a[( b16]) | c8~ c\noBeam c16 |
d8 e8.\noBeam | e8 e16.[( d]) | d8 d16.[( c]) | c8 c16.[( b]) | g8 a8.\noBeam |
a8 r8.
 \bar "|." 
\endmmm
 \varA
d8\startTextSpan e8.\noBeam | e8 e[( d16]) | g8 d8.\stopTextSpan\noBeam 
 \bar "|." 
}
\addlyrics { От- го- ре сла- зят все вой- ни- ци, 
ко- \startTextSpan ла- де ле, \stopTextSpan
на  \startTextSpan раз- до- ри \stopTextSpan 
То- \startTextSpan до- ро- во, ко- ла- де \stopTextSpan }
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
  opus = "ВА-1,1,26"
  tagline = ##f
}


