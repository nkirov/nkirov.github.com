%{
BA_3_1_17
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
\varAB  
d4\startTextSpan g,\stopTextSpan | 
a4.( g8) | g2 | 
\varC
d'8\startTextSpan( c) c( b\stopTextSpan) | 
g4 a | a4.( b8) | g2 | g4 g 
 \bar ":|" 
\endm
\varA  
c8(\startTextSpan b) g4\stopTextSpan  \bar "||"
\varB 
b4\startTextSpan g\stopTextSpan  \bar "||"
\varC
b8\startTextSpan( c) c( b\stopTextSpan)  
\bar "|."
}
\addlyrics { О- тиш- ла и Де- на за во- да сту- де- на }
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
  opus = "ВА-3,1,17"
  tagline = ##f
}


