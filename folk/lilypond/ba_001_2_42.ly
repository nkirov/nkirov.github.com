%{
BA_1_2_42
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
g8 a4 a8 | c4 d | c4( b8[ a]) | a4 a | d8\noBeam c c8\noBeam c | d8( c) a4 |
\break
a2 | c4 d | d8\noBeam c c8\noBeam d | d8( c) a8( g) | a2 | a4 a  
 \bar "|." 
}
\addlyrics { И- ван- чо Та- ни ду- ма- ше: Та- ни ма- ри, пи- ле чи- чо- во, Та- ни ма- ри, пи- ле чи- чо- во }
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
  opus = "ВА-1,2,42"
  tagline = ##f
}


