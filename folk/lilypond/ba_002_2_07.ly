%{
BA_2_2_07
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
d8.([ c16] b8[ a]) | d8( c) b8( c) | c8( b) a4 | a2 | b8( c) d8( c) | d8([ c] b[ a]) | d8( c) b( c) | c( b) a4 | a2 | a4 a | c8([ b] a[ g]) | a4 \acciaccatura b8 c4 | c8( b) a4 a2 | c4 c | d8([ c] b[ a]) | a8( g) a( c) | c( b) a4 | a2 | a4 a   
 \bar "|." 
}
\addlyrics { Ма- ма на Сто- ян ду- ма- ше: Сто- йе- не, си- но Сто- йе- не, 
днес- ка йе, си- не, Ви- лик- дян, у- тря йе, си- не, Гер- гьов- ден }
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
  opus = "ВА-2,2,7"
  tagline = ##f
}


