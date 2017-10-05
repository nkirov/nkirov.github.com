%{
BA_2_1_05
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
\varA 
a4\startTextSpan  a\stopTextSpan | 
c4 c | d4.( c8) | d8( c) c8( b) | 
\varB
a4.\startTextSpan( g8\stopTextSpan) | 
\varC
b8\startTextSpan( c)  d4\stopTextSpan | 
\break
d4 c8( b) | a2 | a8 a4. | a4 r4 
 \bar ":|" 
\endm
\varA 
g4\startTextSpan  a\stopTextSpan \bar "||"
\varB
\set Score.measureLength = #(ly:make-moment 3 4)
s4\startTextSpan a2\stopTextSpan \bar "||"
\set Score.measureLength = #(ly:make-moment 2 4)
\varC
c4\startTextSpan d4\stopTextSpan 
\bar "|."
}
\addlyrics { Ма- ра И- ли- ю ду- ма- ши: Бай- ни ле, ба- ти И- ли- я, }
\addlyrics { във Ра- ди- йо- ви да и- диш, Ра- ди- я, баш гай- да- джи- я }
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
  opus = "ВА-2,1,5"
  tagline = ##f
}


