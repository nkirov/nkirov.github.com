%{
BA_3_1_25
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
c4 c8\noBeam b | d4 c8( b) | a2 | a8( g) g( a) | a8\noBeam g g8\noBeam f | a4 a8( g) | g4 r4 | c4 c8( b) | c8 b4 g8 | c4 c8( b) | a2 | g8( f) g( a) | a8\noBeam g g8\noBeam f | d'4 a8( g) | g2 | g4 g 
 \bar "|." 
}
\addlyrics { Съ- ши- "ла~й" Стан- ка ръ- ка- ви, 
Ста- \startTextSpan но, ма- ри, Дил- джи- лер- ке- на, \stopTextSpan
съ- ши- "ла~й" Ста- на ръ- ка- ви, 
Ста- \startTextSpan но, ма- ри, раз- сип- ни- ци мо \stopTextSpan }
%
\layout {
  indent = #0
  line-width = 190\mm
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
  opus = "ВА-3,1,25"
  tagline = ##f
}


