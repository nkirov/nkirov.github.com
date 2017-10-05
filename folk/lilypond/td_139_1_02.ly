%{
sva_139_1_02
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 126
\time 2/4
\override Glissando #'style = #'zigzag
\parS
a4\glissando-\parenthesize\mordent e | a\mordent a | 
b4.( a8) | b8([ a]) a[(\prall g]) |
\acciaccatura { g16[ f] } e2 | g4 a | 
a8-\parenthesize\prall([ g)] g-\parenthesize\prall[( f]) | e2^\rtoe | e4 e | e2-\parenthesize\fermata
 \bar "|." 
}
\addlyrics { Ма- ма Сто- я- на за- гла- ви, "в пе-" тък го ма- ма о- гла- ви }
%
\layout {
  indent = #0
  line-width = 190\mm
  ragged-right=##f
}
%
\midi { 
	\context {
		\Score tempoWholesPerMinute = #(ly:make-moment 126 4)
		}
	}
}
%
\header{
  opus = "ТД-139,1,2"
  tagline = ##f
}


