stdBE = { \once \override Stem #'stroke-style = #"grace" }

\relative c' {
\acciaccatura c8 d4 \acciaccatura { g16[ f] } e4 e2 
\grace { \stdBE a8( } g4) \grace { f16[( e] } g4) g2
c4( \grace { \stdBE a8\( } g4\)) c c
\afterGrace a4( { \stdBE g8) } f4 e2 
\afterGrace a4(\( { \stdBE g8\) } f4 e2)
\acciaccatura f8 \afterGrace g4\( { f16[ g]\) } g4 g2
}
