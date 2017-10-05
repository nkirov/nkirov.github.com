%{
BA_1_2_37
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
  b8( a) a4 | b4 d | c4.( b8) | b8( c) d( c) | d4( c) | b4 d | d8( c) c8( b) | a2 | a8 a4. | a4 r4 | b8( a) a4 | b4 d | c4.( g8) | b4 d8( b) | \times 2/3{d8( [e d]} c4) | b4 d | d8( c) c8( b) | a2 | a8 a4. | a4 r4 
 \bar "|." 
}
\addlyrics { Ма- ма на Са- ва ду- ма- ше: Са- во мо, ми- ла ма- мя- на, ста- ни съ, Са- во, о- бле- чи, със две са кит- ки на- ки- чи }
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
  opus = "ВА-1,2,37"
  tagline = ##f
}


