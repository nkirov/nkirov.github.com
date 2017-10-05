%{
TD_095_1_09
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 144
  \time 2/4
  \phrasingSlurDown
b4 b | \acciaccatura b8 c4( b\mordent) | a8([ gis]) a4 | b4 ais8([ b]) | 
gis4 r4 | gis4 fis4 | gis8([ ais8] b4\mordent) | ais8([ gis]) ais4 | gis4 g4 | 
g2\fermata \bar "||"
\break
b8([ c]) c4 | d8([ c] \grace { d16[\( c b] } c4\)) | bes8([ a]) b4 | 
c4 b8([ c]) | a4 r4 | a4 b | c4\mordent(b8[ c)] | a4 b | a g\prall | g2\fermata \bar "||"
\break
c4\mordent c | d8([ c] c4)\mordent | b8([ a]) b4 | c4 b8([ c]) | a4 r4 | a4 b | c8([ b] c4\mordent) | 
a4 b | a g | g2\fermata
 \bar "|." 
}
\addlyrics { Раз- бо- лял ми "са~й" млад Ма- лин, раз- бо- лял ми "са~й" млад 
Ма- лин на ви- со- ки- те чар- да- ци, на а- ле- ни- те мин- де- ри.
Ма- ма при Ма- лин се- де- ше, Ма- ли- на гла- ва дър- же- ше }
%
\layout {
  indent = #0
  line-width = 190\mm
  ragged-right=##f
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
  opus = "ТД-95,1,9"
  tagline = ##f
}


