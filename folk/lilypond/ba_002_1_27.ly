%{
BA_2_1_27
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
g4 g | g2 | g8( a) b4 | c8([ b] b8-\parenthesize-\prall[ a]) | 
a8( g) g4 | g8( a) b4 | c8( b4 a8) | b8( a) a8( g) | g2 | g4 g    
 \bar "||"
g8( a) a4 | \acciaccatura a8 g4.( f8) | g8( a) b4 | 
\parS
c8([ b] b8-\parenthesize-\prall[ a]) | a8( g) g4 | g8( a) c4 | 
c8( b4 a8) | a4 a8( g) | g2 | g4 g 
 \bar "|."
}
\addlyrics { Аз о- дях, ма- мо, аз о- дях на Ар- да, на во- ди- ни- ца, на Ар- да на во- ди- ни- ца със тор- ба браш- но да ме- ля }
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
  opus = "ВА-2,1,27"
  tagline = ##f
}


