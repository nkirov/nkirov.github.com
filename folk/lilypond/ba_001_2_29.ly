%{
BA_1_2_29
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
a4 d | c d | d8( c b8 a~\fermata) | a2 | b4 c | c8( b b a\fermata) | b8 c4 b8 | 
c8( b) a4~\fermata | a2 | 
\varA
a8\startTextSpan a4.\stopTextSpan | 
a4 r4 
 \bar "|." 
\endm
\varA
a4\startTextSpan a\stopTextSpan  
\bar "|." 
}
\addlyrics { Ба- кал Ди- ми- тра за- кла- ли, Ди- мит- ра и Ди- мит- ри- ца }
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
  opus = "ВА-1,2,29"
  tagline = ##f
}


