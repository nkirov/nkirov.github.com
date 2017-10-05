%{
BA_2_2_18
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
b8( c) d4 | c8( b) c4 | d c8( b) | c4 c  
 \bar ":|"
d4 d | d4. c8 | b4 a | e'4 e8( d) | b4 d | d4. c8 | b4 a | a a
 \bar "|."
}
\addlyrics { Ма- ри бу- льо Ба- лю- ви- це, ту- ка ли йе ба- ти Ба- лю, 
ту- ка ли йе ба- ти Ба- лю }
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
  opus = "ВА-2,2,18"
  tagline = ##f
}


