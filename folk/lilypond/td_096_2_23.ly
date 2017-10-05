%{
eng_096_2_23
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 84
\time 2/4
b16[( c b a]) b8\noBeam c^"↑" | \acciaccatura c8 b( \grace c\( b16[\) a]) a4 |
b8.([ a16]) b8\noBeam c^"↑" | \acciaccatura c8^"↑" b4 b\fermata
 \bar "|."
 s4 \fixB e, \fixC
  \bar "|." 
\break 
a16([ b] \times 2/3 { c16[ b a]) } b8\noBeam cis | c4\prall a | 
b8\( \acciaccatura c8 b16[ a]\) b8 cis\noBeam | b4 b\fermata   
 \bar "|." 
}
\addlyrics { Ма- ри Ма- ри- йо, чер- на чу- ре- шо }
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
		tempoWholesPerMinute = #(ly:make-moment 84 4)
		}
	}
}
%
\header{
  opus = "ТД-96,2,23"
  tagline = ##f
}


