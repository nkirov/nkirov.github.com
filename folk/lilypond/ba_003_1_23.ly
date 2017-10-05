%{
BA_3_1_23
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
  c4 b8\noBeam a | b4 g | b d | c4( \times 2/3 { d8[ c b]) } | c8\noBeam c b8\noBeam a | b4 g | b a | a2 
 \bar ":|" 
}
\addlyrics { Го- ня- "ла~й" Рад- ка тел- ци- те, чи си за- гу- бя- ла кал- ци- те }
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
  opus = "ВА-3,1,23"
  tagline = ##f
}


