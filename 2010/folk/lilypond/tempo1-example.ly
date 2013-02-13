\include "Rhythm_marks.ly"

\relative c' {
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
  \rhythmMarkA \rhyMarkAAdot #"80"
d4 d d d e e e e f f f f
}
