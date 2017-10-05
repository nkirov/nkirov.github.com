%{
TD_140_1_27
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 152
  \time 2/4
\acciaccatura c8 d4 d8( c) b4 a 
\parS
g2-\parenthesize-\rtoe \acciaccatura c8 d4 \acciaccatura e8 d( c) 
b4\mordent a8 b\noBeam g4 a 
  \override Glissando #'style = #'zigzag
b \noteFi a8.\glissando( g16) \time 3/4 g2. \time 2/4 g4^\ltoe g^\rtoe g2
 \bar "|." 
 \fixB d4  
 \bar "|." 
}
\addlyrics { Го- ро льо, го- ро зе- ле- на, 
ма- \startTextSpan ри, \stopTextSpan 
го- ро льо, го- ро зе- ле- на }
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
		tempoWholesPerMinute = #(ly:make-moment 152 4)
		}
	}
}

\header{
  opus = "ТД-140,1,27"
  tagline = ##f
}



