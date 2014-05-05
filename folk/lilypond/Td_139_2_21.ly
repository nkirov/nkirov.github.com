%{
kav_139_2_21
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 126
 \time 2/4
g4 g | \acciaccatura b8 c4( d16[ c b8]) | \acciaccatura c8 d4 d8( c) | 
\acciaccatura { d16[ c] } b4 b8\noBeam a | 
\override Glissando #'style = #'zigzag
\set Score.measureLength = #(ly:make-moment 3 4)
b4 \noteFi b\glissando \hideNotes f \unHideNotes   | 
\set Score.measureLength = #(ly:make-moment 2 4)
g a | a( b16[a g8]) |
\acciaccatura a8 b4 g | g2\fermata
 \bar "|." 
 s4 \fixB d
 \bar "|." 
}
\addlyrics { Гъ- \startTextSpan лъ- бьо,  Гъ- лъ- бьо,  ма- ри, \stopTextSpan 
Гъ- лъ- " " бьо, Ин- дже вой- во- до }
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
		\Score
		tempoWholesPerMinute = #(ly:make-moment 126 4)
		}
	}
}
%
\header{
  opus = "ТД-139,2,21"
  tagline = ##f
}


