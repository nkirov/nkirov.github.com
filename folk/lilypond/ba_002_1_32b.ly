%{
BA_2_1_32
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
a4^"2 вариант" a | d4( \times 2/3 { d8[ c b]) } | 
d4 c4 | c8([ b] b8[ a]) | 
d4 \times 2/3 {d8 ([ c b])} | d4 d8( c) |  
c8([ b] a8[ b]) | d8( c) b4 | a2 | a8\noBeam a8 r4  
 \bar ":|" 
}
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
%%  opus = "ВА-2,1,32"
  tagline = ##f
}


