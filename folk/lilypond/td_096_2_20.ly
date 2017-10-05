%{
laz_096_2_20
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 160
 \time 2/4
 \repeat volta 2 { a4 \acciaccatura a8 b4 | a( b) | b4 a8( g) | 
 \varA
 b4\startTextSpan b\stopTextSpan } 
 \alternative { { a8( g b4) | a g } { a2 | a4 a } }
 \bar "|." 
 s4 \fixB d, \fixC
 \bar "|." 
\endm 
\varA
 b'4\startTextSpan c16[( b a b\stopTextSpan)]
 \bar "|." 
}
\addlyrics { Тър- гу- вал Пье- тър де- вят го- ди- ни го- ди- ни }
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
		tempoWholesPerMinute = #(ly:make-moment 160 4)
		}
	}
}
%
\header{
  opus = "ТД-96,2,20"
  tagline = ##f
}


