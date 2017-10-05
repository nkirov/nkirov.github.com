%{
TD_138_1_32
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 132
  \time 2/4
 g4 a | a \acciaccatura c8 d4 | 
\varA 
 d4\startTextSpan c8([ b\stopTextSpan]) | 
 d4 c8([ b]) | 
\varB 
 a4\startTextSpan g8([ fis\stopTextSpan]) | 
\varC 
 g4\startTextSpan a\stopTextSpan | 
 a c | 
 \break
 b g | a2 | a2
 \bar "|." 
 s4 \fixB e4 \fixC
 \bar "|." 
\endm 
\varA 
 d'8\startTextSpan[( c]) c([ b\stopTextSpan]) \bar "||"
\varB 
 a4\startTextSpan g4\stopTextSpan \bar "||"
\varC 
 fis8\startTextSpan([ g)] a4\stopTextSpan 
 \bar "|."  
}
\addlyrics { Ру- се, Ру- се, тен- ко Ру- се, 
джа- \startTextSpan нъм, \stopTextSpan  
Ру- се, Ру- се, тен- ко Ру- се }
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
		tempoWholesPerMinute = #(ly:make-moment 132 4)
		}
	}
}
%
\header{
  opus = "ТД-138,1,32"
  tagline = ##f
}


