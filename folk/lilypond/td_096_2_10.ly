%{
TD_096_2_10
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 160
 \time 2/4
\varA
f4\startTextSpan g16( a8.\stopTextSpan) | 
a2 | g16( a8.) g8( f) | f4 g16( a8.) | 
\varB
a4\startTextSpan( \grace { \stdB b8\( \stdE } g4\stopTextSpan\)) |
\acciaccatura a8 g( f) g( a) | g4 \acciaccatura { f16([ e] } d4) | d4.( e8) | f4 g8( a) |
 g4 \acciaccatura { f16([ e] } d4) | d2 | d4 d
 \bar "|." 
s4 \fixB a \fixC
\bar "|."
\endm
\varA
f'4\startTextSpan  \acciaccatura g8 a4\stopTextSpan \bar "||"
\varB
a4\startTextSpan\( \acciaccatura b8 a8[ g]\stopTextSpan\) 
\bar "|."
}
\addlyrics { Над- фър- ля- ли се, над- фър- ля- ли се, до- вец и ер- ген, до- вец и ер- ген }
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
  opus = "ТД-96,2,10"
  tagline = ##f
}


