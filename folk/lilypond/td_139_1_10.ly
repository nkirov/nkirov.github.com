%{
sva_139_1_10
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 120
\time 2/4
  b4 b8([ a]) | b4( c16[ b a8]) | b4 b8([ a]) | b4( c16[ b a8]) | a4 a8[( g]) | 
a2^\rtoe | a4 a | a2\fermata
 \bar "|." 
 s4 \fixB gis \fixC
  \bar "|." 
\break
\acciaccatura a8^"Варианти: (1)" b4 b8\prall([ a]) | 
 | b4( c16[ b a8]) | b4  a | b4( c16[ b a8]) | a4 g | 
a2^\rtoe | a4 a | a2\fermata s2 \bar "" s2
\break
b8^"(2)"([ a]) a4 | 
 | b4( c16[ b a8]) | b4  a | b4( c16[ b a8]) | a8([ b]) g4 | 
a2^\rtoe | a4 a | a2\fermata s2 \bar "" s2
\break
b8^"(3)"([ a]) a4 | 
 | b4( c16[ b a8]) | \acciaccatura a8 b4  b8[( a]) | b2 | a8([ b]) b16[( a g8]) | 
a2^\rtoe | a4 a | a2\fermata s2 \bar "" s2
\break
g4^"(4)" a4 | 
 | b4( c16[ b a8]) | b8([ a])  a4 | b2\mordent | b8([ a]) a8[( g]) | 
a2^\rtoe | a4 a | a2\fermata s2 \bar "" s2
\break
a4^"(5)" a| 
 | b4( a) | b4 b8([  a]) | \acciaccatura a8 b2 | b8([ a]) a8[( g]) | 
a2^\rtoe | a4 a | a2\fermata s2 \bar "" s2
\break
a8^"(6)"([ b]) b4| 
 | b4( a) | b4 b16([ a g8]) | \acciaccatura a8 b2 | b4 b16[( a g8]) | 
a2^\rtoe | a4 a | a2\fermata s2 \bar "" s2

}
\addlyrics { Съ- ньо, ти, мой съ- ньо, ти, мой ду- шма- ни- не }
%
\layout {
  indent = #0
  line-width = 190\mm
  ragged-right=##f
}
%
\midi { 
	\context {
		\Score tempoWholesPerMinute = #(ly:make-moment 120 4)
		}
	}
}
%
\header{
  opus = "ТД-139,1,10"
  tagline = ##f
}


