%{
laz_134_2_24
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 152
\time 2/4
s4 b \bar "||"
b2 | a8( b a16[ b a g]) | b4 a | b8( a) g4 | a b | c a | b2~ | b\fermata | b
 \bar "|." 
 s4 \fixB e,
 \bar "|."  
}
\addlyrics { и Про- вик- на се Йор- ги от Мер- мер кю- при- я }
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
  opus = "ТД-134,2,24"
  tagline = ##f
}


