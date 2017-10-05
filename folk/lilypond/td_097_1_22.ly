%{
sva_097_1_22
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 160
\time 2/4
g4 a | a d, | g a | a2 | 
\varA
g4\startTextSpan a\stopTextSpan | 
a e | g a | a r 
\break
\bar "|:"
\varB
d4\startTextSpan d8( e\stopTextSpan) | 
c4.( b8) | g4 a | a r  
 \bar ":|"
 s4\fixB bes \fixC
  \bar "|." 
\endm
\varA
e,4\startTextSpan a\stopTextSpan \bar "||"
\varB
d4\startTextSpan d\stopTextSpan
 \bar "|."   
}
\addlyrics { Как са чу- ка пи- пе- ра, как са чу- ка пи- пе- ра чер- ни- я,
чер- ни- я }
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
  opus = "ТД-97,1,22"
  tagline = ##f
}


