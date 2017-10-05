%{
TD_140_2_19
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 160
  \time 2/4
\set Score.measureLength = #(ly:make-moment 3 4)    
 s4 \acciaccatura c8 d2 
 \set Score.measureLength = #(ly:make-moment 2 4)  
 d8( c) c( b) d4 d8( c) b4.( a8) a4 b8( c) b4.( a8) g4 a
 b8( c) b4 a8( g) g4 g2
 \bar "|." 
 \fixB e4  
 \bar "|." 
}
\addlyrics { Ни- ко- ла Лен- ка ду- ма- ше: Се- стро Е- ле- но, Е- лен- ке }
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
		tempoWholesPerMinute = #(ly:make-moment 160 4)
		}
	}
}

\header{
  opus = "ТД-140,2,19"
  tagline = ##f
}


