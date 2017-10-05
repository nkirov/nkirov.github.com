%{
TD_170_1_01
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 152
  \time 2/4
 f4.( ees8) \acciaccatura f8 | g4 g4\mordent 
 \varA
 f8\startTextSpan( ees) d( c\stopTextSpan) |
 \acciaccatura ees8 f4 f8( ees) |
 d4( ees16 d c8) | 
 \break
 f4.( g8) 
\varA
 f8\startTextSpan( ees) d( c\stopTextSpan) |
 d8( ees) f4 \acciaccatura f8 ees4 d d2~ d 
 \bar "|."
\endm %%\break
 %% f4.( ees8)  \acciaccatura f8 g4 g\mordent f8( ees) d4  \acciaccatura ees8 f4 f8( ees)
 \varA
 f8\startTextSpan( ees) d4\stopTextSpan 
 \bar "|."
}
\addlyrics { Вой- ни- ци, Стой- не, из- би- рат, 
Стой- \startTextSpan не ле, ю- ба- ви- це ле \stopTextSpan }
%% Кой за две го- дин кой за "..." }
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
  opus = "ТД-170,1,1"
  tagline = ##f
}


