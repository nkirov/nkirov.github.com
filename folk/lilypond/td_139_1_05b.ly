%{
sva_139_1_05b
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%%\tempo 4 = 104
\time 3/4
%%\cadenzaOn
\parS
a4^"или" b2-\parenthesize^\rtoe c4\mordent
c8( b4.-\parenthesize^\rtoe ) \acciaccatura b8 c4 \acciaccatura d8 c4(
\acciaccatura { d16[ c] } b4) 
b8([ a]) 
b2-\parenthesize^\rtoe \acciaccatura b8 c4 
b4\prall( c16[ b a8]) \acciaccatura a8 b4 b2~ b2.
 \bar "|." 
}
\addlyrics { И- ма- ла е Я- на два бра- та на- до- лу }
%
\layout {
  indent = #0
  line-width = 190\mm
  ragged-right=##f
}
%
\midi { 
	\context {
		\Score tempoWholesPerMinute = #(ly:make-moment 104 4)
		}
	}
}
%
\header{
%%  opus = "ТД-139,1,5"
  tagline = ##f
}


