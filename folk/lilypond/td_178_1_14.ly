%{
laz_178_1_14
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 126
 \time 2/4
c4 d | d8( c) d( e) | f2 | 
\varA
f8\startTextSpan( e) g4\stopTextSpan |
\varB
f8\startTextSpan( e) f\noBeam f\stopTextSpan | 
f([ e)] e( d) |
d2 | d4 d
 \bar "|." 
 \endm
\varA
f8\startTextSpan( e) f( g\stopTextSpan) \bar "||"
\varB
f8\startTextSpan( e) f4\stopTextSpan 
 \bar "|." 
}
\addlyrics { Тук сме чу- ли- раз- бра- ли, че и- ма ер- ген чер- но- ок }
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
		tempoWholesPerMinute = #(ly:make-moment 126 4)
		}
	}
}
%
\header{
  opus = "ТД-178,1,14"
  tagline = ##f
}


