noteFi = { \once \override Stem #'X-extent = #'(2 . 4) }
\relative c' {
  \override Glissando #'style = #'zigzag
c4( d8) g2~ g8 e16[( d c d]) g4.(~ g8 a4)
g4\glissando c \noteFi c16(\glissando f, g4.)
\set Score.measureLength = #(ly:make-moment 5 4)
c2 c2\glissando \hideNotes f,4 \unHideNotes
\set Score.measureLength = #(ly:make-moment 4 4)
a1
}


