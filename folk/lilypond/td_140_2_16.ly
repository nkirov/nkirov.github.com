%{
TD_140_2_16
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 152
  \time 2/4
 a4 \acciaccatura c8 d4 \acciaccatura e8 d([ c b)] a\noBeam a4 e 
 \varAB
 \parS 
 a\startTextSpan-\parenthesize-\mordent a\stopTextSpan |
 \varC
 \acciaccatura a8\startTextSpan b4. a8\stopTextSpan |
 a2^\rtoe | a2
 \bar "|." 
 s4 \fixB f4 \fixC 
 \bar "|."
 \endm
 \varA
 a4\startTextSpan a8( g\stopTextSpan) \bar "||" 
 \varB
 e4\startTextSpan a\stopTextSpan \bar "||" 
\varC
 a4.\startTextSpan b8\stopTextSpan
 \bar "|."
}
\addlyrics { Вай- во- да, вай- во- да, по- съ- брал вай- во- да }
%
\layout {
  indent = #0
  line-width = 190\mm
  ragged-right=##f
 %%  ragged-last = ##t
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
  opus = "ТД-140,2,16"
  tagline = ##f
}


