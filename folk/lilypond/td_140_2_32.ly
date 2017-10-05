%{
TD_140_2_32
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 152
  \time 2/4
\set Score.measureLength = #(ly:make-moment 1 8) 
a8 \bar "||"
\set Score.measureLength = #(ly:make-moment 2 4)  
 \acciaccatura c8 d4 d  
 \parG
 \acciaccatura \parenthesize e8 d8( c) c( b) 
\varA  
 \acciaccatura c8\startTextSpan d4 d8( c\stopTextSpan) 
\parS
 c8-\parenthesize-\prall( b) a4 \break
 b b8( a) c4 c8-\parenthesize-\prall( b) 
 \varB
 b\startTextSpan( a)  a4\stopTextSpan  
 a a\fermata
 \bar "|." 
 s4 \fixB g4 \fixC 
 \bar "|." 
 \endm
\varA 
 \acciaccatura c8\startTextSpan d4 c\stopTextSpan \bar "||"
\varB 
 b4\startTextSpan  a\stopTextSpan  
 \bar "|." 
}
\addlyrics { и Про- те- къ- ла ве- чер- нич- ка, 
про- те- къ- ла ве- чер- нич- ка }
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

\header{
  opus = "ТД-140,2,32"
  tagline = ##f
}


