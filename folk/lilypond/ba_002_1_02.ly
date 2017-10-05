%{
BA_2_1_02
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
\par 
\varA
d8\startTextSpan( c) b4\stopTextSpan | 
\varB
\set Score.measureLength = #(ly:make-moment 3 4)
s4\startTextSpan b2\stopTextSpan| 
\set Score.measureLength = #(ly:make-moment 2 4)
a4 g8( fis) | e4.( d8) | g4 a | 
\varC
\set Score.measureLength = #(ly:make-moment 3 4)  
 s4\startTextSpan b2\stopTextSpan | 
\set Score.measureLength = #(ly:make-moment 2 4)  
\varD
b4\startTextSpan a\stopTextSpan | a2
\bar ":|"
\endm 
\varA
g4\startTextSpan a4\stopTextSpan \bar "||"
\varB
\afterGrace b2\startTextSpan( { \stdB a8\stopTextSpan) \stdE } \bar "||"
\varC
b4.\startTextSpan b8\stopTextSpan \bar "||"
\varD
b8\startTextSpan[( a]) a4\stopTextSpan 
\bar "|."
}
\addlyrics { Ма- ма си И- ван- ча на- хра- "ни~й" на- по- и }
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
  opus = "ВА-2,1,2"
  tagline = ##f
}


