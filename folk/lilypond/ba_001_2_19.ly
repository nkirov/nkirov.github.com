%{
BA_1_2_19
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
g4 a8\noBeam a | d4. c8 | d4 d | c16( b a4.) |
\varA
b8\startTextSpan c4 b8\stopTextSpan | 
c4. bes8 | bes4 a | a4.( g8) | g4 a8\noBeam a | d4. c8 | d4 d | c16( b a4.) | 
\varB \gliss
g8\startTextSpan \noteFi \acciaccatura g8\glissando c4 b8 | c4. bes8\stopTextSpan  | 
bes4 a | a2 
\bar "|."
\endm 
\varA
c4\startTextSpan c8\noBeam d\stopTextSpan  \bar "||"
\varB
g,4\startTextSpan c8\noBeam c \noteFi c4.\glissando g8\stopTextSpan 
\bar "|." 
}
\addlyrics { Тръг- на- ли ми са, тръг- на- ли две Ра- ди, 
дор две и- тър- ви, тръг- на- ли ми са, тръг- на- ли две Ра- ди,
дор две и- тър- ви }
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
  opus = "ВА-1,2,19"
  tagline = ##f
}


