%{
TD_140_2_31
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 160
  \time 2/4
 g4 a8( b) c2^\rtoe d4\mordent c8( b) 
 \acciaccatura b8 c4 d c8([ b16 c] d[ c b8)] g4 a
 a2^\rtoe \acciaccatura b8 c4 \acciaccatura d8 c( b) a4 a a2
 \bar "|." 
 s8 \fixB g4  
 \bar "|." 
}
\addlyrics { Ди- мо То- до- ра ду- ма- ше, 
То- \startTextSpan до- ро, Де- ли- ди- мо- ва \stopTextSpan }
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
		tempoWholesPerMinute = #(ly:make-moment 160 4)
		}
	}
}

\header{
  opus = "ТД-140,2,31"
  tagline = ##f
}


