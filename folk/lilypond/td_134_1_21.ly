%{
TD_134_1_21
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 144
  \time 2/4
 d4 d | e4 e8([ d]) | \acciaccatura c8 d2 | d8([ c]) c8([ b]) | a2 | d4 d | c4 d8([ c]) | \acciaccatura c8 b4.( a8) | b4 b | b2\fermata
 \bar "|." 
s4 \fixB cis, 
 \bar "|." 
}
\addlyrics { Ни- кол То- до- ро ду- ма- ше: Лю- бе То- до- ро, То- дор- ке }
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
		tempoWholesPerMinute = #(ly:make-moment 144 4)
		}
	}
}
%
\header{
  opus = "ТД-134,1,21"
  tagline = ##f
}


