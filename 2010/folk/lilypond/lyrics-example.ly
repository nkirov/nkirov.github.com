\version "2.12.3"
\score {
\relative c' {
 \tempo 4 = 152
 \time 2/4
e8( f) g4 | g8( aes) g( f) | \acciaccatura f8 e2 | f4 g | aes g8 f |
e4 f | g g8( f) | \acciaccatura f8 e2 | e4 e | e2
 \bar "|." 
}
\addlyrics { И- ван си Ра- ди гу- во- ри, ма- \startTextSpan ри, \stopTextSpan 
И- ван си "в го-" ра о- ти- де }
%
\layout {
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
}
