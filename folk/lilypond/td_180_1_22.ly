%{
TD_180_1_22
%}
\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 132
  \time 2/4
 d4 \acciaccatura f8 g4 f  \acciaccatura f8 g4 | f8.( ees16 d8[ c]) 
d4 \acciaccatura ees8 f4  f8^\rtoe( ees^\ltoe d[ c]) 
d4 \acciaccatura ees8 f4 f8( ees) d4 d2~ d d8 d4. d4 r4 
 \bar "|." 
 s4 \fixB cis4 
 \bar "|."
}
\addlyrics { Слав- чо на Рад- ка ду- ма- ше: Рад- ки мо, лю- бе лъ- жов- но }
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

\header{
%%  title = "Славчо на Радка думаше"
  composer = "ТД-180,1,22"
  tagline = ##f
}



