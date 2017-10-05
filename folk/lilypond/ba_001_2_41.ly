%{
BA_1_2_41
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
a8\noBeam b c8( b) | a2 | cis8( d) e4 | d8\noBeam d d8( c) | b2 | a8( b) b8\prall( g) | \break
a8\noBeam b c8( b) | a2 | \acciaccatura cis8( d4) d8( cis) | b8^>\noBeam c b4 | b2 | b4 b  
 \bar "|." 
}
\addlyrics { За- лю- ля съ Да- на го- ря на Тър- но- во, 
за- лю- ля съ Да- на го- ря на Тър- но- во }
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
  opus = "ВА-1,2,41"
  tagline = ##f
}


