%{
td_097_2_21
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 168
\time 4/4
\override Glissando #'style = #'zigzag
\set Score.measureLength = #(ly:make-moment 5 4)
\hideNotes c4\glissando \unHideNotes e4 e d c | 
\hideNotes c4\glissando \unHideNotes e e d c | 
\set Score.measureLength = #(ly:make-moment 4 4)
d d8[( e]) c4 b | a a \acciaccatura c8 d4 c |
d d8[( e]) c4 b | a a a a | a2 a4 e8 e\noBeam | 
\set Score.measureLength = #(ly:make-moment 5 4)
\hideNotes f4\glissando \unHideNotes a2 a4 r | 
\hideNotes f4\glissando \unHideNotes a2 a4 e8 e\noBeam | 
\hideNotes f4\glissando \unHideNotes a2 a4 r
 \bar "|." 
 \set Score.measureLength = #(ly:make-moment 3 4)
s4 \fixB e^↑
 \bar "|."  
}
\addlyrics {" " Ой, ко- ле- до, " " мой ко- ле- до, ро- ди- ло се~й бо- же че- до,
 ро- ди- ло се~й бо- же че- до, 
 ко- \startTextSpan ла- де ле " " ла- де,  \stopTextSpan
 " " ко- \startTextSpan ла- де ле " " ла- де \stopTextSpan }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 168 8)
		}
	}
}
%
\header{
  opus = "ТД-97,2,21"
  tagline = ##f
}


