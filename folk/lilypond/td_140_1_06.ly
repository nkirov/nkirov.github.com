%{
TD_140_1_06
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 152
  \time 2/4
 \varA 
 a8\startTextSpan a4.\stopTextSpan 
 \acciaccatura c8 d4( e) 
 \varB
 e\startTextSpan e8( d) e16( d c b c4) c c8( b) \stopTextSpan 
 \acciaccatura b8 d4 c8( b) 
 \varC
 c4\startTextSpan~( c16 b a b) \acciaccatura b8 d4 c8( b)  \stopTextSpan
 a2 a4 a 
 \bar "|." 
 s4 \fixB ees4 \fixC 
 \bar "|."
 \endm
 \varA
 a8\startTextSpan( g) a4\stopTextSpan \bar "||"
 \varB
  e'4\startTextSpan d c2 c8( b)  b4 \stopTextSpan \bar "||" 
 \varC
 c4\startTextSpan( d) c b  \stopTextSpan
 \bar "|."
}
\addlyrics { Ди- мо си ис- ка да и- де на Сул- ма- зен- ски И- ван- ден }
%
\layout {
  indent = #0
  line-width = 190\mm
  ragged-right=##f
%%   ragged-last = ##t
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
  opus = "ТД-140,1,6"
  tagline = ##f
}


