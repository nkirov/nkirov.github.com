%{
BA_2_2_37
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
\varA
a8\startTextSpan( g) g4 | c4 c8( b) | g4 a\stopTextSpan | 
a2 | 
\varB
a4\startTextSpan g | a a | a g\stopTextSpan | g2 
 \bar ":|"
\break
\varA
 g4\startTextSpan g | \acciaccatura b8 c4 c8( b) | a8( g) a4\stopTextSpan \bar "||"
\varB 
 a4\startTextSpan g8\noBeam f | g4 a | a8( g) g4\stopTextSpan 
 \bar "|." 
}
\addlyrics { Бе- ля- ла йе Дра- ган- ка тън- ки бе- ли да- ро- ве, }
\addlyrics { тън- ки бе- ли да- ро- ве "с ней-" ни- "ти вер-" ни хай- чи- ци }
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
  opus = "ВА-2,2,37"
  tagline = ##f
}


