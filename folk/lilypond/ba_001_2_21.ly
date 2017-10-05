%{
BA_1_2_21
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
e4 d | c4. d8 | e4 d | c8( b) a4 | 
\varA
d4\startTextSpan d\stopTextSpan | 
c4. c8 | 
\varB
d4\startTextSpan d\stopTextSpan | 
c8( b) a( d) | c4 b |  a4. b8 | c4 b | a d | c b | a4. b8 | c4 b | a a 
 \bar "|." 
\endm
\varA
a4\startTextSpan d\stopTextSpan  \bar "||" 
\varB
e4\startTextSpan d\stopTextSpan  
\bar "|." 
}
\addlyrics { Я- бъл- ка йе род ро- ди- ла, я- бъл- ка йе род  ро- ди- ла, 
от ро- да се по- тро- ши- ла, от ро- да се по- тро- ши- ла }
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
  opus = "ВА-1,2,21"
  tagline = ##f
}


