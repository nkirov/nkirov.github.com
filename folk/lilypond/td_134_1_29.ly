%{
TD_134_1_29
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 160
  \time 2/4
\varA  
 e4\startTextSpan e\stopTextSpan | 
\varB 
 e\startTextSpan d\stopTextSpan | 
\varC 
 b\startTextSpan b8\noBeam c\stopTextSpan | 
 d2 |
\varA 
 e4\startTextSpan e\stopTextSpan | 
\varB 
 e\startTextSpan d\stopTextSpan | 
 \break
c8([ b]) b8\noBeam b8 | b2
 \bar "|." s4 \fixB cis, \fixC \bar "|." 
\endm
\varA
d'8\startTextSpan([ e]) d8([ e\stopTextSpan]) \bar "||"
\varB
d8\startTextSpan([ e]) d4\stopTextSpan \bar "||" 
\varC
c8\startTextSpan([ b]) b8\noBeam c\stopTextSpan 
 \bar "|." 
}
\addlyrics { Ма- ро, Мар- ке Бой- да- но- ва, Ма- ро, Мар- ке Бой- да- но- ва }
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
  opus = "ТД-134,1,29"
  tagline = ##f
}


