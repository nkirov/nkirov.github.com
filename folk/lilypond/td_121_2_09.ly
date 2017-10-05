%{
TD_121_2_09
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 144
  \time 2/4
\varA  
g8\startTextSpan g4 a8\stopTextSpan | 
\varB
b16\startTextSpan( c8.) b8\prall( a\stopTextSpan) | 
\acciaccatura a8 b4~( b16[ c b a]) |
\acciaccatura b8 c4 \times 2/3 { d8->( c b) } | a8 g4 a8 |
b8( a) \acciaccatura b8 a( g) | g2 | 
\varC
g8\startTextSpan( a) a( b\stopTextSpan) | 
a8 g4 a8 | b( a) a( b) | g2 | g4 g
 \bar "|." 
s4 \fixB c,4 \fixC 
  \bar "|." 
\endm
\varA  
g'4\startTextSpan g8\noBeam a8\stopTextSpan   \bar "||"
\varB
b8\startTextSpan( c) b\prall( a\stopTextSpan) \bar "||"
\varC
g8\startTextSpan( a) b4\stopTextSpan
\bar "|." 
}
\addlyrics { Мо- ри То- до- ро, То- дор- ке, мo- ри ги- дий- ско мо- ми- че,
мо- ри ги- дий- ско мо- ми- че }
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
%
\header{
  opus = "ТД-121,2,9"
  tagline = ##f
}


