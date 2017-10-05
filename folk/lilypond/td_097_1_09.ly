%{
td_097_1_09
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 8 = 176
\time 3/8
d8 d4 | c8 b8.[( c16]) | d8 c[( b]) | a16[( g]) g4 | b16[( c]) c8 c\noBeam |
d16[( c]) b8 b\noBeam | c16[( b)] a16.[( b32] a16[ g]) | g8 g4\fermata 
 \bar "|." 
s8 \fixB a,4
 \bar "|." 
}
\addlyrics { Звън- на- ли са мом- ни пор- ти 
ра- \startTextSpan но ми, "с ут-" ро льо, във ни- де- ля \stopTextSpan }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 176 8)
		}
	}
}
%
\header{
  opus = "ТД-97,1,9"
  tagline = ##f
}


