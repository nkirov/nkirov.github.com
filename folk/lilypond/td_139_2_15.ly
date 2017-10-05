%{
TD_139_2_15
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 116
  \time 2/4
 g4 g \acciaccatura a8 c4( d16 c b8) d8( c) c( b) a( b~^\rtoe b16 a g8) 
 a( g) g4 a8( b4^\rtoe a8) \acciaccatura { b16([ a] } g4) g g2
 \bar "|." 
 s4 \fixB c,4 
 \bar "|." 
}
\addlyrics { Ма- ра ма- ма ду- ма: Ма- мо, ми- ла ма- мо }
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
		tempoWholesPerMinute = #(ly:make-moment 116 4)
		}
	}
}

\header{
  opus = "ТД-139,2,15"
  tagline = ##f
}

