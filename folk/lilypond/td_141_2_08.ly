%{
TD_141_2_08
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
 g4 a8( bes) a4.( g8) g( f) e4 \acciaccatura g8 a4.( g8) g( f) e4
 g a8( bes) | 
 \break
 a4.( g8) | 
 \varA
 a\startTextSpan( g) g( f\stopTextSpan) 
 e4 e e2\fermata
 \bar "|." 
 s4 \fixB d4 \fixC 
 \bar "|."
 \endm
 \varA
  a'8\startTextSpan( g) g([ a\stopTextSpan)] 
 \bar "|."
}
\addlyrics { Мар- чо на Дон- ка ду- ма- ше: Лю- бе До- не ле, До- не ле }
%
\layout {
  indent = #0
  line-width = 190\mm
  ragged-right=##f
%%   ragged-last = ##t
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
  opus = "ТД-141,2,8"
  tagline = ##f
}



