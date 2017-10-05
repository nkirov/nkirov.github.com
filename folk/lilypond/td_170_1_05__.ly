%{
TD_170_1_05
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 132
  \time 2/4
d4 d8 ees\noBeam f4 f8( ees) d( ees) f( g) f2(\prall~ f4~ f16 ees d ees) f4 
 f8\prall([ ees]) d4.\rtoe( ees8) f( ees) f4 ees8( d) d4 d2\fermata 
 \bar "|." 
}
\addlyrics { Ма- ма на Сто- ян ду- ма- ше: Си- но Сто- я- не, Сто- я- не }
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

\header{
  opus = "ТД-170,1,5"
  tagline = ##f
}


