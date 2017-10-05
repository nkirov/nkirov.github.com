%{
BA_1_2_10
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
a4 a | e'4.( d8) |
\varA
\set Score.measureLength = #(ly:make-moment 3 4)  
  s4\startTextSpan d2\stopTextSpan | 
\set Score.measureLength = #(ly:make-moment 2 4)  
\varB
e4\startTextSpan e8( d\stopTextSpan) | 
c4 d | d8([ c] b[ a]) | a2 | a4 a |
a a | e'4.( d8) | d4.( c16 b) | 
\varC
  e4\startTextSpan e\stopTextSpan |   
c d | d8( c b a) | a2 | a4 a
 \bar "|."
\endm 
\varA
d4.\startTextSpan( c8\stopTextSpan) \bar "||"
\varB
e4\startTextSpan e4\stopTextSpan \bar "||"
\varC
e4\startTextSpan e8( d\stopTextSpan) 
\bar "|." 
}
\addlyrics { По- гър- мя, по- три- щя сно- щи на ви- че- ря, дре- бян дъжд
 у- да- ри, си- во ста- до сва- ри }
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
  opus = "ВА-1,2,10"
  tagline = ##f
}


