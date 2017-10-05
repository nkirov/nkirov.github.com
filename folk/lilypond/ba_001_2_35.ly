%{
BA_1_2_35
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
\varA 
d4\startTextSpan a8\noBeam a\stopTextSpan\noBeam | 
c2 | d8( c) c8( b) | a4 d | a4 g8\noBeam a | c2 | d8( c) c( b) | a4 a 
 \bar ":|" 
\endm
\varA 
d4\startTextSpan a8\noBeam b\stopTextSpan\noBeam \bar "|."
}
\addlyrics { Лю- би- ла~й Ра-  да поп- чи- то, лю- би- ла~й Ра- да поп- чи- то, }
\addlyrics { поп- чи- то, гра- ма- ти- чи- то, поп- чи- то, гра- ма- ти- чи- то }
%
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
  opus = "ВА-1,2,35"
  tagline = ##f
}


