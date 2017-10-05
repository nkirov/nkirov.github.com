%{
BA_3_1_35
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
a4 b | b4 a8( g) | b4 b | b a8( g) | fis4 e | e d | g g | \acciaccatura a8 b4 a4 | g8( fis) e4 | g4 g8( fis) | e4 e | e e 
 \bar "|." 
}
\addlyrics { Как бе рик- ла Ян- ка, как бе ри- кла Ян- ка: Дай ма, ма- мо, 
дай ма, дай ма, о- же- ни ма }
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
  opus = "ВА-3,1,35"
  tagline = ##f
}


