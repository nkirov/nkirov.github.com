%{
TD_141_1_15
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
  g4 g a a8( bes) \afterGrace a4(\( { bes16[ a\)] } g4) a a8( bes) 
  a4\prall a8 g\noBeam a( g) g4 g8( fis^"↓") fis\prall( e) e2^\rtoe e4 e e2\fermata
 \bar "|." 
 s4 \fixB c4 
 \bar "|."
}
\addlyrics { Как- во е чу- до ста- на- ло, 
ма- \startTextSpan ри, \stopTextSpan 
във двай- "се~й" пе- та го- ди- на }
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
  opus = "ТД-141,1,15"
  tagline = ##f
}


