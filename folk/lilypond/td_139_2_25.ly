%{
TD_139_2_25
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 126
  \time 2/4
a4  \acciaccatura f'8 g4 g8([ f] e d) d( e) c4 e4.( d8) c( bes) a4
 \acciaccatura d8 e4 d c c8( bes) a2^\rtoe a8 a4. a2
 \bar "|." 
 s4 \fixB d,4 
 \bar "|." 
}
\addlyrics { Ка- лин- ка Кън- чо из- пра- ща, Ка- лин- ка Кън- чо из- пра- ща }
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

\header{
  opus = "ТД-139,2,25"
  tagline = ##f
}


