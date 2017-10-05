%{
TD_134_2_35
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 152
 \time 2/4
\partial 4 a4 \bar "||" 
b4 b16([ c8.]) | 
\varA
\set Score.measureLength = #(ly:make-moment 3 4)
d2\startTextSpan \hideNotes d4\stopTextSpan \unHideNotes  | 
\set Score.measureLength = #(ly:make-moment 2 4)
d8([ e]) d\prall[( c]) |
\parS
\varB
c4\startTextSpan\mordent( b) | a4 a | d8([ b]) c4 | 
\slurDown c8\prall([ b-\parenthesize\prall] b\prall[ a\stopTextSpan]) \slurNeutral | 
\varC
a8\startTextSpan[( g]) a4\stopTextSpan | 
a2~ | a\fermata | a4-\parenthesize^\ltoe a\fermata
 \bar "|." 
 s4 \fixB d,4 \fixC
  \bar "|." 
\endm
\varA
\acciaccatura c'8 \startTextSpan d2\stopTextSpan \bar "||"
\varB
b4\startTextSpan\prall( a) | a4 a8([ d]) | d8([ c]) c4 | c16([ b a8] b\prall[ a\stopTextSpan])  \bar "||"
\varC
g4\startTextSpan a\stopTextSpan
\bar "|." 
}
\addlyrics { И Хра- ни- ла " " ма- ма, гле- да- ла два си- на, 
дор два близ- на- ка }
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
  opus = "ТД-134,2,35"
  tagline = ##f
}


