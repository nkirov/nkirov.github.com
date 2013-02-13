tsMarkup =\markup {
\override #'(baseline-skip . 2) \number {
\column { "13" "16" }
\vcenter "+"
\column { "9" "16" }
      }
 }

\relative c'' {
\override Staff.TimeSignature #'stencil = #ly:text-interface::print
\override Staff.TimeSignature #'text = #tsMarkup 
\time 22/16
  \set Score.measureLength = #(ly:make-moment 13 16)
g8 g\noBeam g16([ a)] f8. d4 |
  \set Score.measureLength = #(ly:make-moment 9 16)
c8 d16.([ e16.)] f4 
}
