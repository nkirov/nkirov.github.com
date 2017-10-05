%{
laz_181_1_26
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 144
 \time 2/4
e4 c | d4.( e8) | f4 e8( f) | e4 d | \acciaccatura d8 e( d c4) | 
\acciaccatura d8 e4 c8( d) | 
\break
d4.( e8) | 
\varA
f4\startTextSpan e8( f\stopTextSpan) | 
e4 d | d2
 \bar "|." 
 s4 \fixB d \fixC
 \bar "|."
 \endm
\varA
f8\startTextSpan( e) e( f\stopTextSpan)
 \bar "|."
}
\addlyrics { Млад Геор- ги вой- ник о- ти- де, бул- че под бу- ло о- ста- ви }
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
  opus = "ТД-181,1,26"
  tagline = ##f
}


