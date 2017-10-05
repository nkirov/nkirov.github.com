%{
ba_001_1_18
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%\tempo 8 = 152
\time 3/8
b4 c8 | d4 b8 | d4 c8 | b8 a4 | g8 b4 | b4 a8 |
b4 c8 | 
\break
\varA
d4\startTextSpan e8\stopTextSpan | 
d4 c8 | b8 a4 | g8 b4 | b8 r4
 \bar "|." 
\set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 3 8)  
 \clef treble
 \varA
d4\startTextSpan b8\stopTextSpan
 \bar "|."  
}
\addlyrics { По- сго- ди са Бог- дан ю- нак, 
ко- \startTextSpan ла- ди ле, \stopTextSpan
Бог- \startTextSpan да- \stopTextSpan ни \startTextSpan ле, 
до- бър ю- нак, ко- ла- де \stopTextSpan }
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
  opus = "ВА-1,1,18"
  tagline = ##f
}


