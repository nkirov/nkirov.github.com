%{
BA_2_1_01
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
g4 g | a2 | 
\varA
b8\startTextSpan([ c] c8[ b8\stopTextSpan]) |
b8( a) a8( g) | 
g8( a) b8( a) |
\varB
a8\startTextSpan ([ b] a8[ g\stopTextSpan]) | 
g2 | g4 g  \bar ":|"
\endm
\varA
b8\startTextSpan([ c] c4\stopTextSpan)  \bar "||"
\varB
a8\startTextSpan\([ b] \acciaccatura b a[ g\stopTextSpan]\)
\bar "|."
}
\addlyrics { Тръг- на- ла йе Я- на приз го- ра зи- ле- на }
\addlyrics { бил- ки да на- бе- ре, бил- ки ля- ко- вил- ки }
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
  opus = "ВА-2,1,1"
  tagline = ##f
}


