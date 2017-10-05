%{
TD_170_1_03_razdel
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 152
  \time 2/4
 d4 \acciaccatura f8 g4 g8( f) g( a) a4 a8( g) 
 \par
 \acciaccatura\parenthesize g8 
 f( g) d( c) 
 \varA
 d\startTextSpan( e) \acciaccatura f8 g4\stopTextSpan \break
 \acciaccatura f8 g4 f e( f16 e d8) e( d) d4 d2( d\fermata)
 \bar "|." 
\endm 
 d8\startTextSpan( e) \acciaccatura f8 d8( c\stopTextSpan) \bar "|."
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



