%{
TD_093_1_24
%}

\include "td-preamble.ly"

\score {
\relative c'' {
% \tempo 4 = 152
 \time 2/4
b4 b8( c)  b( c) b( a) | g4 b | a8( b) a( g) | 
\varA
a8\startTextSpan( b) b( c\stopTextSpan) |
\varB
b\startTextSpan( c) b4\stopTextSpan | 
\varC
b8^>\startTextSpan( a) a4\stopTextSpan | 
a a\fermata
 \bar "|." 
s4 \fixB cis,4 \fixC
 \bar "|." 
\endm
\varA
a'4\startTextSpan b\stopTextSpan \bar "||"
\varB
c8\startTextSpan( b) a4\stopTextSpan \bar "||"
\varC
g4\startTextSpan a4\stopTextSpan 
\bar "|."  
}
\addlyrics { Ста- но Я- но, Бу- де- ян- ко,  Ста- но Я- но, Бу- де- ян- ко }
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
		tempoWholesPerMinute = #(ly:make-moment 152 4)
		}
	}
}
%
\header{
  opus = "ТД-93,1,24"
  tagline = ##f
}


