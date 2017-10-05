%{
BA_1_2_30
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
d4 c8\noBeam c | b4 aes8( g) | g4.( f8) | 
\varA
\acciaccatura g8\startTextSpan( aes4) aes8( f\stopTextSpan) | 
\varB
g8\startTextSpan( aes) aes8\noBeam aes\stopTextSpan | 
b4 aes8( g) | g4 r4 | g8( aes) b4 | g4 d'8\noBeam c | b4 aes8( g) | g4.( f8) | 
g8( aes) aes8( f) | \acciaccatura g8 ( aes4) aes8\noBeam aes | b4 aes8( g) | 
g2 | g4 g 
 \bar "|."
\endm 
 \varA
g8\startTextSpan( aes) aes8( f\stopTextSpan) \bar "||"
 \varB
\acciaccatura g8\startTextSpan( aes4) aes8\noBeam aes\stopTextSpan
 \bar "|." 
}
\addlyrics { Въз- при, И- ва- не, ко- ла- та, зам да са ка- чи мо- ма- та, 
въз- при, И- ва- не, ко- ла- та, зам да са ка- чи мо- ма- та }
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
  opus = "ВА-1,2,30"
  tagline = ##f
}


