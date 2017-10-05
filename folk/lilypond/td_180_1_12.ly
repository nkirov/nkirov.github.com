%{
TD_180_1_12
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 126
  \time 2/4
 d4 f f g f8[( ees d c)] f4 g   f8[( ees d c)] f4 f f8( ees) d4
d2\fermata d4^\ltoe d^\rtoe d2 
\bar "|." 
}
\addlyrics { Слав- чо на Рад- ка  ду- ма- ше: Рад- ке мо, лю- бе, Рад- ке мо }
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
%%  title = "Славчо на Рада думаше"
  composer = "ТД-180,1,12"
  tagline = ##f
	}

