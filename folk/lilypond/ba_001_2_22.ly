%{
BA_1_2_22
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
g8\noBeam a a8.( g16) | g4 a | b a8( b) | b8.( a16 g4) | b8\noBeam b a4 | 
\varA
g4\startTextSpan a8( b\stopTextSpan) | 
b8( a) a4 | a4( g8) r8 | g8\noBeam a a8.( g16) | g4 a4 | b8( a) a4 | 
b r4 | b8\noBeam b a4 |
\varA
g4\startTextSpan a8( b\stopTextSpan) | 
\varB
b8\startTextSpan( a) a4\stopTextSpan | 
a4 r4  
\bar "|." 
\endm
\varA
g4\startTextSpan a\stopTextSpan \bar "||" 
\varB
b4\startTextSpan a\stopTextSpan 
\bar "|." 
}
\addlyrics { Биг- лик са бе- ре, ма- ни мо, по И- ри- бор- ски ка- дъ- лък, 
биг- лик са бе- ре, ма- ни мо, по И- ри- бор- ски ка- дъ- лък }
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
  opus = "ВА-1,2,22"
  tagline = ##f
}


