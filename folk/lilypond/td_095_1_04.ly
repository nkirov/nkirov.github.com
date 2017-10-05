%{
TD_95_1_04
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 160
  \time 2/4
  g4 a8([ b]) | c4( \grace { b16[\( c b] } a4\)) | c4 b | 
  a8([ g]) a4 | b a8([ b]) | a4 a | a2\fermata
 \bar "|." 
}
\addlyrics { Да са про-  ва- ли, ма- \startTextSpan мо, \stopTextSpan
у- ба- ви Пе- тър }
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
%
\header{
  opus = "ТД-95,1,4"
  tagline = ##f
}


