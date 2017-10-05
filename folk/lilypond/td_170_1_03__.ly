%{
TD_170_1_03_razdel1 (залепен лист)
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 152
  \time 2/4
 d4 \acciaccatura f8 g4 g8( f) g( a) a4 a8( g) 
 \acciaccatura g8 g4 d8( c) 
 d( e) f( g)
 \acciaccatura f8 g4 f | e4.( d8) e( d) d4 d2
 \bar "|." 
}
\addlyrics {Лю- бят се Сто- ян и Рад- ка от ма- ли до- ри го- ля- ми }
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
  opus = "ТД-170,1,3"
  tagline = ##f
}


