%{
BA_1_2_15
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
c2 | 
\varAB
\set Score.measureLength = #(ly:make-moment 3 4)
s4\startTextSpan c2\stopTextSpan | 
\set Score.measureLength = #(ly:make-moment 2 4)
b | 
\varC
b4\startTextSpan( aes\stopTextSpan) | 
c4 c | b2 | aes8( g f4) | 
\varD
b4\startTextSpan aes8( g\stopTextSpan) |
\break
f2 | f4 r4
 \bar ":|" 
\endm 
\varA
c'8.\startTextSpan( b16 aes4\stopTextSpan) \bar "||"
\varB
c4\startTextSpan( b8 aes\stopTextSpan) \bar "||"
\varC
b4\startTextSpan r4\stopTextSpan \bar "||"
\varD
aes4\startTextSpan aes8( g\stopTextSpan)  
\bar "|." 
}
\addlyrics { Ка- ли- но, Ка- лин- ке, зна- йеш ли, пом- ниш ли }
\addlyrics { га бя- ха го- ди- ни, го- ди- ни раз- мир- ни }
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
  opus = "ВА-1,2,15"
  tagline = ##f
}


