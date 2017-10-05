%{
TD_140_1_23
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 144
 \time 2/4 
  \acciaccatura g8 a4 g   
  a8.( b16 a8 g)  \acciaccatura g8 a4 g8.( f16) e2^\rtoe
   \acciaccatura f8 g4  \acciaccatura a8 g8.( f16) e2^\rtoe 
\varA  
   e4\startTextSpan  e4\stopTextSpan
 e2 \bar "|." 
 s4 \fixB  e4 \fixC 
 \bar "|."
\endm 
 e8\startTextSpan e4.\stopTextSpan 
 \bar "|."
}
\addlyrics { Де- вер бу- ля ду- ма: Бу- льо, ми- ла  бу- льо }
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
		tempoWholesPerMinute = #(ly:make-moment 144 4)
		}
	}
}

\header{
  opus = "ТД-140,1,23"
  tagline = ##f
}



