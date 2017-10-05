%{
BA_3_1_09
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
a4 d | \acciaccatura c8 d4~( \times 2/3 { d8 c b) } | d4 c | 
\varA  
b4.\startTextSpan( a8) | a4 g | a c | b4( \times 2/3 { c8 b a\stopTextSpan) } | 
\varB
b4\startTextSpan a8( g\stopTextSpan) |
a2 | a4 a
 \bar "|." 
\endm
\varA  
c8\startTextSpan( b4 a8) | b8( a)  g4 | a8( b) c4 | b4.( a8\stopTextSpan) \bar "||" 
\varB
a8\startTextSpan( b) a8( g\stopTextSpan) 
\bar "|." 
}
\addlyrics { Съб- ра- ли ми са, съб- ра- ли се- ля- ни, се чор- ба джа- та }
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
  opus = "ВА-3,1,9"
  tagline = ##f
}


