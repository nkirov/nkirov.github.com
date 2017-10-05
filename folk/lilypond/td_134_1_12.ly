%{
TD_134_1_12
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 152
  \time 2/4
\parG
\set Score.measureLength = #(ly:make-moment 5 8)
\ii \parenthesize a8 
  e'8([ d]) d8([ c]) | 
\set Score.measureLength = #(ly:make-moment 2 4)  
  c8([ b] b8[ a]) | 
\varA
\set Score.measureLength = #(ly:make-moment 3 4)
s4\startTextSpan a2\stopTextSpan| 
\set Score.measureLength = #(ly:make-moment 2 4)
\varBC
c8\startTextSpan ([ d]) e4\stopTextSpan | 
\varD
e8\startTextSpan ([ d]) c8([ d\stopTextSpan]) | 
c8([ b] b8[ a]) | \time 3/4 a2. | \time 2/4 a4 a4\fermata 
 \bar "|."
 s4 \fixB a, \fixC
  \bar "|."
\endm
\varA
a'4.\startTextSpan( g8\stopTextSpan) \bar "||"
\varB
c8\startTextSpan ([ d]) e([ d\stopTextSpan]) \bar "||"
\varC
c8\startTextSpan ([ d]) d([ c\stopTextSpan]) \bar "||"
\varD
e4\startTextSpan c\stopTextSpan
\bar "|."

}
\addlyrics { "(и)" За- бяг- нал я Мар- ко "в Е-" дер- нен- ско по- ле }
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
  opus = "ТД-134,1,12"
  tagline = ##f
}


