%{
laz_134_2_28
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 176
\time 2/4
a8( b) c( b) | c8.( d16 c4) | 
\varA
c16\startTextSpan( b a b a4\stopTextSpan) | 
\varB
\set Score.measureLength = #(ly:make-moment 3 4)
s4\startTextSpan a2\stopTextSpan | 
\set Score.measureLength = #(ly:make-moment 2 4)
\varC
c4\startTextSpan c8( b\stopTextSpan) | 
a2 |
\varD
a4\startTextSpan-\parenthesize^\ltoe a8( g) | 
\acciaccatura a8 c2 | \time 4/16 c16([ b a b\stopTextSpan)] | 
\time 2/4 a2~ | a\fermata | a8 a4. | a2 
 \bar "|." 
 s4 \fixB ees \fixC
  \bar "|."
\endm
\varA
c'16\startTextSpan( b c b a4\stopTextSpan) \bar "||"
\varB
\afterGrace a2\startTextSpan( { \stdB g8\stopTextSpan) \stdE } \bar "||"
\varC
c8\startTextSpan c4\prall( b8\stopTextSpan) \bar "||"
\varD
a8\startTextSpan( b) c( d) | 
c8([ d c b]) | a8([ b^\markup { "↓" }] a4\stopTextSpan)] 
  \bar "|." 
}
\addlyrics { Де- то си Гер- ге си- де- ше, хо- да- я- та му сви- те- ше }
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
		tempoWholesPerMinute = #(ly:make-moment 176 4)
		}
	}
}
%
\header{
  opus = "ТД-134,2,28"
  tagline = ##f
}


