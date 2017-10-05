%{
ba_001_2_01
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%\tempo 8 = 152
\time 2/4
\override Glissando #'style = #'zigzag
d4\glissando c | 
\set Score.measureLength = #(ly:make-moment 3 4)
b2\glissando \hideNotes g4 \unHideNotes | 
\set Score.measureLength = #(ly:make-moment 2 4)
g2 | f4 g8[( a]) | c4 c | d c | 
\set Score.measureLength = #(ly:make-moment 3 4)
b2\glissando \hideNotes g4 \unHideNotes |
\set Score.measureLength = #(ly:make-moment 2 4)
g2 | f4 g | g g | g8[( a]) b[( d]) | b2 | g | f4 g8[( a]) |
c4 c | d c | b2 | g | f4 g | g g
 \bar "|." 
}
\addlyrics { Пас- ла~й мо- " " ма, 
ко- \startTextSpan ла- ди ле, \stopTextSpan бра- том ко- " " ня, 
ко- \startTextSpan ла- ди ле, \stopTextSpan как го~й пас- ла, 
ко- \startTextSpan ла- ди ле, \stopTextSpan сън за- юс- на 
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
  opus = "ВА-1,2,1"
  tagline = ##f
}


