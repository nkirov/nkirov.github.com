%{
BA_2_1_22
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
d4 e | e2 | e4 d8( c) | 
\varAB
e4\startTextSpan e\stopTextSpan | 
d4.( c8) | 
\varC
c4\startTextSpan d8( e\stopTextSpan) | 
\varD
d4.\startTextSpan( e8\stopTextSpan) | 
\varE
d4\startTextSpan c8( b\stopTextSpan) | 
\varF
a4\startTextSpan a\stopTextSpan | a4 r4 
 \bar "|." 
\endm
\varA
e'8\startTextSpan e4.\stopTextSpan  \bar "||" 
\varB
e4\startTextSpan e8( d)\stopTextSpan  \bar "||" 
\varC
c4\startTextSpan d4\stopTextSpan \bar "||" 
\varD
\set Score.measureLength = #(ly:make-moment 3 4)
s4\startTextSpan d2\stopTextSpan \bar "||" 
\set Score.measureLength = #(ly:make-moment 2 4)
\varE
d8\startTextSpan( c) c( b\stopTextSpan) \bar "||" 
\varF
a8\startTextSpan a4.\stopTextSpan  
\bar "|." 
}
\addlyrics { За- лю- би Сто- ян, Сто- йе- не, за- лю- би Рад- ка ком- ший- ка }
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
  opus = "ВА-2,1,22"
  tagline = ##f
}


