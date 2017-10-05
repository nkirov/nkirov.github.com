%{
TD_140_2_10
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 168
  \time 2/4
 g4^"I певица" a8( b) c2 c8( d) d16( c b8) c\noBeam c16( d c[ b8.)] c8( b c16 b a b) g8 a4.
 a2 \acciaccatura a8 c4 c16( d c b) a8 a4. a2 \bar "|." \break
g4^"II певица" a8( b)  c2  d8( c) c( b) 
  \varA
 c8\startTextSpan c4( b8\stopTextSpan) 
 \acciaccatura b8 c4( b) g a 
 \parS
 a2-\parenthesize-\rtoe \acciaccatura a8 c c4( b8) a8 a4. a2
 \bar "|." 
 s8 \fixB d,4 \fixC s8 
 \bar "|." 
 \varA
c'4\startTextSpan^\ltoe c8( b\stopTextSpan\rtoe) 
\bar "|."
}
\addlyrics { Ди- мо То- до- ра ду- ма- ше: Лю- бе То- до- ро, То- дор- ке
 Ди- мо То- до- ра ду- ма- ше: Лю- бе То- до- ро, То- дор- ке }
%
\layout {
  indent = #0
  line-width = 190\mm
  ragged-right=##f
%%     ragged-last = ##t
}
%
\midi { 
	\context {
		\Score
		tempoWholesPerMinute = #(ly:make-moment 168 4)
		}
	}
}

\header{
  opus = "ТД-140,2,10"
  tagline = ##f
}


