%{
TD_096_2_07
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 160
 \time 2/4
% \tempo 8 = 168
% \time 7/16
g4 g8\noBeam a | b( a) b4 | g4 a8( b) b4\mordent( a8[ b]) | 
b4 \acciaccatura b8 a( g) | g2 | g8( a8[ \grace { \stdB b8\( \stdE }a]\)) b8 | 
\acciaccatura b8 a( g) g4 | g2 
 \bar "|." 
}
\addlyrics { За- мрък- на Лал- ка без во- да, 
Ла- \startTextSpan ли ле, Ла- ле ба- йо- ва \stopTextSpan }
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
%
\header{
  opus = "ТД-96,2,7"
  tagline = ##f
}


