%{
BA_2_2_25
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
b4 c8\noBeam b | d4 c8( b) | a2 | g4 a | a8\noBeam g g8\noBeam f | a4 a8( g) |
\varA
\set Score.measureLength = #(ly:make-moment 3 4)
s4\startTextSpan g2\stopTextSpan | 
\set Score.measureLength = #(ly:make-moment 2 4)
b8( c) d4 | d8( c) b8\noBeam g | d'4 c8( b) | a2 | g8( f) a4 | a8\noBeam g8 g8\noBeam g | b4 a8( g) | g2 | g4 g 
 \bar "|." 
\endm
\varA
g4\startTextSpan r\stopTextSpan 
\bar "|."
}
\addlyrics { Тъ- ка "ла~й" Дон- ка при- стил- ки, 
До- \startTextSpan ни ма- ри, бя- ло мо- ми- че, \stopTextSpan 
тъ- ка- "ла~й" Дон- ка при- стил- ки,
До- \startTextSpan ни ма- ри, ай- лаз ги- ди- йо \stopTextSpan }
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
  opus = "ВА-2,2,25"
  tagline = ##f
}


