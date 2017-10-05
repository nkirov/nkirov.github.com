%{
TD_141_2_04
%}

\include "td-preamble.ly"

\score {
\relative c' {
%% \tempo 4 = 152
  \time 2/4
 d4 e f f \acciaccatura g8 f4( e8 d) d2 
\varA
 \acciaccatura e8\startTextSpan f4 f8( e\stopTextSpan)  |
\varB 
 d4\startTextSpan  e\stopTextSpan  |
 e2 e
 \bar "|." 
 s4 \fixB c4 \fixC 
 \bar "|." 
 \endm
\varA
 g'4\startTextSpan f\stopTextSpan  \bar "||"
\varB 
 e\startTextSpan  d\stopTextSpan  
 \bar "|." 
}
\addlyrics { Доб- ра д'о- ря ме- те, хем ме- те, хем пла- чи }
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

\header{
  opus = "ТД-141,2,4"
  tagline = ##f
}



