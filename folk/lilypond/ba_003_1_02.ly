%{
BA_3_1_02
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
\repeat volta 2 { a8 a\noBeam b4 | b4.( a8) | a4 a | b g | g8( fis) e4 }
  \alternative { { e2 } { e4 r4 } }
  \repeat volta 2 { g8 fis\noBeam a4 | e2 | 
\varA  
g4\startTextSpan g\stopTextSpan | 
\varB
a\startTextSpan g\stopTextSpan | 
g8( fis) e4 }
  \alternative { { fis r } { e r } } 
 \bar "|." 
\endm
\varA  
g4\startTextSpan fis\stopTextSpan \bar "||" 
\varB
a\startTextSpan a8( g\stopTextSpan)  
\bar "|."  
}
\addlyrics { Ю- нак вър- ви през го- ри- ца зе- ле- на, -на, ту- тун пу- ши със 
лу- ли- ца цър- ве- на на }
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
  opus = "ВА-3,1,2"
  tagline = ##f
}


