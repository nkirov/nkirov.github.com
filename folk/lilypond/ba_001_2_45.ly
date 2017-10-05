%{
BA_1_2_45
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
\varA  
d8\startTextSpan([ c] b4\stopTextSpan) | 
a4 b |
\varB
c4\startTextSpan b\stopTextSpan | 
a4.( g8) | 
\varC
b8\startTextSpan( c) d4\stopTextSpan | 
\varD
d8\startTextSpan([ c] b4\stopTextSpan) | 
a4 b | c8( b) a4 | a2 | a4 a   
 \bar "|."
\endm 
\varA 
d8\startTextSpan( c b a\stopTextSpan) \bar "||" 
\varB
c8\startTextSpan( b) a4\stopTextSpan \bar "||" 
\varC
b8\startTextSpan( c) d( c\stopTextSpan) \bar "||" 
\varD
d8\startTextSpan( c b a\stopTextSpan)
\bar "|." 
}
\addlyrics { Йор- ги- на Тя- на ду- ма- ше, Йор- ги- на Тя- на ду- ма- ше }
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
  opus = "ВА-1,2,45"
  tagline = ##f
}


