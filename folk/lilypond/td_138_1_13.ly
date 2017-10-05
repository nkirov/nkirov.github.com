%{
TD_138_1_13
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 112
 \time 2/4
\parS
\varA 
d4\startTextSpan c8-\parenthesize\prall([ b\stopTextSpan)] | 
c([ b]) a4 | a2 | 
\varB
b8\startTextSpan( c) d4\stopTextSpan | 
c8( d4 c8) | 
\varA
d4\startTextSpan c8-\parenthesize\prall([ b\stopTextSpan)] | 
c([ b]) a4-\parenthesize\prall | 
\break
a2^\rtoe | a4 a | a2\fermata
 \bar "|." 
 s4 \fixB d,4 \fixC
 \bar "|." 
\endm
\varA 
\acciaccatura c'8\startTextSpan d4 c8-\parenthesize\prall([ b\stopTextSpan)] \bar "||"
\varB
c4\startTextSpan d4\stopTextSpan
 \bar "|." 
}
\addlyrics { Ос- ман- лъ Ян- ко, ко- ми- та, Ос- ман- лъ Ян- ко, чул ли си }
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
		tempoWholesPerMinute = #(ly:make-moment 112 4)
		}
	}
}
%
\header{
  opus = "ТД-138,1,13"
  tagline = ##f
}


