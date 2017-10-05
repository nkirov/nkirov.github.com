%{
BA_3_1_15
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
\varA
b2\startTextSpan | b\stopTextSpan | 
d4 d8( c) | b4 a |
\varA
b2\startTextSpan | b\stopTextSpan | 
d4 d8( c) | b4.( a8) | c4.( b8)  
%% \bar "|:"
\repeat volta 2 { aes4 aes8( g) | f4 f | g g | b!4 aes8( g) | f4 g | g2 }
\alternative { { g2 } 
%% \bar ":|"
{ g4 r4 } }
 \bar "|."
 \endm
\varA
c2\startTextSpan | c\stopTextSpan 
\bar "|."
}
\addlyrics { На- у- чи са До- бри, на- у- чи са До- бри 
"в Же-" рав- на да хо- ди, "в Же-" рав- на да хо- ди -ди }
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
  opus = "ВА-3,1,15"
  tagline = ##f
}


