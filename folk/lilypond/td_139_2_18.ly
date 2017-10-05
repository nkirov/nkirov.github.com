%{
kav_139_2_18
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 126
 \time 2/4
d8( c) d4 | e2 | d8( c) d( e) | d( c) \acciaccatura d8 c( b) | a2 |
d8( c) c( d) | d8( c4 b8) | \acciaccatura c8 d4 c | b8( a) a4 | a2
 \bar "|." 
 s4 \fixB c,
 \bar "|."  
}
\addlyrics { Ен- ке ле, ма- ри ле- ли- на, зна- еш ли, Ен- ке, пом- ниш ли }
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
		tempoWholesPerMinute = #(ly:make-moment 126 4)
		}
	}
}
%
\header{
  opus = "ТД-139,2,18"
  tagline = ##f
}

