%{
TD_136_1_11c
%}

\include "td-preamble.ly"

\score {
\relative c' {
%% \tempo 4 = 138
  \time 2/4 
 d4^"III" f g f8( ees) d2 g8( f) f(ees) d4.( c8) d4 f g4 f8( ees) d2 d4^\ltoe d^\rtoe d r4  
\bar "|."  
 s4 \fixB gis, 
\bar "|."
}
\addlyrics { Де- вет е го- дин жи- ля- ла, на ди- се- тя- та~й го- ди- на }
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
		tempoWholesPerMinute = #(ly:make-moment 138 4)
		}
	}
}

\header{
%%  opus = "ТД-136,1,11"
  tagline = ##f
}


