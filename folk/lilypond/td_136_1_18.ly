%{
TD_136_1_18
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 152
  \time 2/4
d4  \acciaccatura f8 g4 g f 
\varA
 a\startTextSpan g\stopTextSpan
f8( e) c4 a'8( g) g4 f8( e) d( c) d4 d d d 
 \bar "|." 
 s8 \fixB gis,4 \fixC  s8 
 \bar "|." 
\endm 
\varA
a'8\startTextSpan( g) g4\stopTextSpan
\bar "|." 
}
\addlyrics { То- до- ро льо, чер- на- о- ка, чер- на- о- ка, бя- ла- ли- ка }
%
\layout {
  indent = #0
  line-width = 190\mm
  ragged-right=##f
%%    ragged-last = ##t
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
  opus = "ТД-136,1,18"
  tagline = ##f
}



