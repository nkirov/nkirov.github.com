%{
ba_001_1_07
td_113_2_9
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%\tempo 8 = 152
\time 5/16
d8 c16.\noBeam b | a8 b8.\noBeam | d8 c16.[( b]) | a8 a8.\noBeam |
g8 c16\noBeam b8 | a8 b8.\noBeam c8 b8.\noBeam a8 a8.\noBeam
 \bar "|." 
}
\addlyrics { Ра- но е ра- нил све- ти Гьор- ги, 
ра- \startTextSpan но ми, Гьор- ге, 
на Гер- гьов- ден \stopTextSpan }
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
  opus = "ВА-1,1,7 (ТД-113, 2, 9)"
  tagline = ##f
}


