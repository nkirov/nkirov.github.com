%{
ba_001_1_09
td_113_2_11
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%\tempo 8 = 152
\time 5/16
d16[( c]) b16.[( a]) | 
\varA
d16\startTextSpan[( c]) b16.[( a\stopTextSpan]) | 
a8 a8.\noBeam b16[( c]) d8. |
d16[( c]) b16.[( g]) | d'16[( c]) b8. | a8 a8.\noBeam | a8 a8.\noBeam 
\bar "|." 
\endmmm
\varA
d16\startTextSpan[( c]) b8.\stopTextSpan\noBeam 
\bar "|." 
}
\addlyrics { Ра- но ра- нил, 
ко- \startTextSpan ла- ди ле, \stopTextSpan
све- ти И- ван, 
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
  opus = "ВА-1,1,9 (ТД-113,2,11)"
  tagline = ##f
}


