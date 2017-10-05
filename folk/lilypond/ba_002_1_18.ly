%{
BA_2_1_18
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
e8\noBeam e e8\noBeam d | d4 c | b4 d | d4 c | c8( b) a4 | 
\break
b4.( a8) | a8\noBeam a a8\noBeam d | d4 c | b4 d | d4 c | b4 a | a2 
 \bar "|." 
}
\addlyrics { Ма- ри, на- край се- ло дор три ко- ня па- ся- ха, ма- ри, би- ри къ- тър би- ри бей- гир бир да- а }
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
  opus = "ВА-2,1,18"
  tagline = ##f
}


