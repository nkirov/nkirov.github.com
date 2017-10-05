%{
TD_171_1_09
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 120
  \time 2/4
a8( g) g( a) a2 a8( g) g( a) a8( g16 f g8 a) g( f) f( ees) d( ees) f4
\acciaccatura f8 g4.( a8) g( f) f( ees) d2 d4 d
 \bar "|." 
}
\addlyrics { Ди- ми- тър ма- ма ду- ма- ше: Ма- мо ле, ста- ра май- чи- це }
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
		tempoWholesPerMinute = #(ly:make-moment 120 4)
		}
	}
}

\header{
  opus = "ТД-171,1,9"
  tagline = ##f
}


