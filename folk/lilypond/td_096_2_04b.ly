%{
td_96_2_04b
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 160
  \time 2/4
  e4 g4 | g4 \acciaccatura g8 a4 | \acciaccatura a8 g4 a8( g) | \acciaccatura {g16[ f]} e2  |
  g16([ f8.)] g4 | g16([ f8.^↑)] e4 | e8 e4. | e2 
 \bar ":|" 
 s4 \fixB ees4 \fixC
 \bar "|."

}
\addlyrics { И- ва- ни ле, лю- би ле, ку- ку- ви- "ца~й" гу- ля- ма }
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
%
\header{
%%  opus = "ТД-96,2,4"
  tagline = ##f
}


