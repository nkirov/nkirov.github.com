%{
laz_094_2_09
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 138
\time 2/4
\phrasingSlurDown
g4 a8( b) | c4( \grace { d16[\( c] } d4\)) | d c8( b) | 
\varA
c4\startTextSpan c8( b\stopTextSpan) | 
a2^\rtoe |
\varB
g4\startTextSpan g\stopTextSpan | 
\break
c c8( b) | a2^\rtoe | a4 a~ | a2
 \bar "|." 
s4 \fixB b, \fixC
  \bar "|." 
\endm
\varA
c'8\startTextSpan( d) c8( b\stopTextSpan) \bar "||"
\varB
g4\startTextSpan a8( b\stopTextSpan)
   \bar "|." 
}
\addlyrics { Тъ- че ни- вя- ста ле- ни- но плат- но, ле- ни- но плат- но }
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
		tempoWholesPerMinute = #(ly:make-moment 138 4)
		}
	}
}
%
\header{
  opus = "ТД-94,2,9"
  tagline = ##f
}


