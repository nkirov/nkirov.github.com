%{
BA_2_2_43
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
b4 g | d' d8( c) | b4 g | b c8( b) | 
\varA
b8\startTextSpan( a) g4\stopTextSpan | 
\varB
a\startTextSpan b8( a\stopTextSpan) | 
\varC
a\startTextSpan g4.\stopTextSpan | 
c4 c8( b) | 
\varA
b8\startTextSpan( a) g4\stopTextSpan | 
\varB
a\startTextSpan b8( a\stopTextSpan) | 
a4 g | g g 
 \bar "|." 
 \endm
\varA
b8\startTextSpan( a) g8( f\stopTextSpan) \bar "||"
\varB
a4\startTextSpan a\stopTextSpan \bar "||"
\varC
a4\startTextSpan g\stopTextSpan 
\bar "|." 
}
\addlyrics { Ма- ри Ра- до, бя- ла Ра- до, хай- ди да са спо- бра- ти- мим, 
хай- ди да са спо- бра- ти- мим }
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
  opus = "ВА-2,2,43"
  tagline = ##f
}


