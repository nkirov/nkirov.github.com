%{
TD_140_2_11
%}

\include "td-preamble.ly"
\include "makam.ly"

\score {
\relative c'' {
 \tempo 4 = 152
  \time 2/4
 a4 \acciaccatura c8 d4 \acciaccatura d8 e4 e8( d) c4( d16 c b8) 
 \acciaccatura c8 d4 d8( c) \acciaccatura c8 b( bfk a4) 
 a8( b) c( b) c( d) d( c) b([ bfb] bfk[ a)] b( a) a4 a2 
 \bar "|." 
 \fixB c,4 
 \bar "|." 
}
\addlyrics { Де- льо на Да- фа ду- ма- ше: Лю- бе Да- фе ле, Да- фе ле }
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

\header{
  opus = "ТД-140,2,11"
  tagline = ##f
}

