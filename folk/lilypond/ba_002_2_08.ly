%{
BA_2_2_08
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
  a4 b | 
\varA  
d\startTextSpan \acciaccatura e8 d4\stopTextSpan | 
d8( c) b( a) | 
\afterGrace a2( { \stdB g8) \stdE } | 
a8( b) d4 | d4 b | b8( a) a4 |
\varB
a4\startTextSpan r4\stopTextSpan 
 \bar ":|" 
\endm 
\varA  
b\startTextSpan \acciaccatura e8 d4\stopTextSpan \bar "||"
\varB
a4.\startTextSpan( g8\stopTextSpan)
}
\addlyrics { За- спа- ла йе Да- мя- на на ов- чар- ско ко- ля- но }
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
  opus = "ВА-2,2,8"
  tagline = ##f
}


