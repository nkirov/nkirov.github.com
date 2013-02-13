%{ TD_093_1_01 %}
%
\include "td-preamble.ly"
%
\score {
  \relative c' {
    \tempo 4 = 152
    \time 2/4
    e8( f) g4 | g8( aes) g( f) | \acciaccatura f8 e2 | f4 g | aes g8 f |
    e4 f | g g8( f) | \acciaccatura f8 e2 | e4 e | e2
    \bar "|." 
  }
  \addlyrics { И- ван си Ра- ди гу- во- ри, ма- ри,  И- ван си Ра- ди гу- во- ри }
%
  \layout {
     indent = #0
     line-width = 190\mm
     ragged-right=##f
  }
%
  \midi { 
   \context { \Score tempoWholesPerMinute = #(ly:make-moment 152 4) }
  }
%
  \header {
     opus = "TD-93,1,1"
     tagline = ##f
  }
}
