%{
BA_2_2_35
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
e4 e8( d) | d8([ c b ]) a8 | d4 d8( c) | b4 b | b b8( a) | a4 b8( c^"↑") | d8([ c b]) a8 | d4 d | a a | a a  
 \bar "||"
 e'8\noBeam e e8\noBeam d | d8([ c b ]) a8 | b8( c) d( c) | b4 b | b b8( a) | a8\noBeam a b8\noBeam c^"↑" | d8([ c b]) a8 | d4 d8( c) | b8( a) a4 | a4 a
 \bar "|."
}
\addlyrics { Мой- то лю- би па- ря- са- но хо- ди! Mой- то лю- би па- ря- са- но хо- ди! Не- ка, не- ка хо- ди, а- къл да му до- ди, не- ка, не- ка хо- ди а-къл да му до- ди }
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
  opus = "ВА-2,2,35"
  tagline = ##f
}


