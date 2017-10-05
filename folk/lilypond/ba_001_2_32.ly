%{
BA_1_2_32
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 3/8
b16( [ c ] ) d8\noBeam d | b8 a4 | b8 c4 | c16( [ b ] a16[ b~ ] b8) | g8\noBeam c\noBeam c | c16( b) a4 | a8 a4 | a8 r4 | g8\noBeam c8\noBeam c | c16( b) a4 | b16( [ c\noBeam ] ) d8.( c16) | c16( [ b ] a16 [ b ] g8) | d'8\noBeam d8\noBeam c | c16( b) a4 | a8
a4 | a8 r4
 \bar "|." 
}
\addlyrics { Ва- сил- чо Ен- ки ду- ма- ше: Ен- ки мо, лю- бе Ен- ки мо Ва- сил- чо Ен- ки ду- ма- ше: Ен- ки мо, лю- бе Ен- ки мо }
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
  opus = "ВА-1,2,32"
  tagline = ##f
}


