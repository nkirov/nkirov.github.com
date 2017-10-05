%{
kav_139_2_24
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 132
 \time 2/4
d4.( c8) | b4 c |  \acciaccatura c8 d4 d8( c) | b4( c16[ b a8]) |
\acciaccatura a8 g4 g | b c8( d) | d4 c | b a | a16^>[( g8.] g4) | g2\fermata
 \bar "|." 
s4 \fixB c,
 \bar "|." 
}
\addlyrics { Ми- тьо и Дон- ка два- ми- нта о- тиш- ли жет- ва да же- нат }
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
		tempoWholesPerMinute = #(ly:make-moment 132 4)
		}
	}
}
%
\header{
  opus = "ТД-139,2,24"
  tagline = ##f
}


