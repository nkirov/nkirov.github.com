%{
laz_179_2_08
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 160
 \time 2/4
\acciaccatura d8 e4 d | c8( b) a4 | \acciaccatura d8 e2 | e8\prall( d c4) | 
e4 d | 
\varA
c8\startTextSpan( b) c4\stopTextSpan | 
d2 | d4 r
 \bar "|." 
 s4 \fixB fis \fixC
 \bar "|." 
 \varA
c8\startTextSpan( b) b8( c\stopTextSpan)
 \bar "|." 
}
\addlyrics { Мо- ми кит- ки ви- ят, по пъ- тя ги фър- гат }
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
  opus = "ТД-179,2,8"
  tagline = ##f
}


