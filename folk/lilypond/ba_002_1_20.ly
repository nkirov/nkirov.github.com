%{
BA_2_1_20
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
  d4 a | d4 d8( c)  | 
\acciaccatura b8 \afterGrace a2( { \stdB c8) \stdE } | 
\gliss
\varA
  c8\startTextSpan \noteFi c4\glissando ( b8\stopTextSpan) |
  a4.( g8) | g4 a8( b) | 
\break  
\varB  
  c4\startTextSpan c8( b\stopTextSpan) | 
\varC  
\set Score.measureLength = #(ly:make-moment 3 4) 
s4\startTextSpan a2\fermata\stopTextSpan | 
\set Score.measureLength = #(ly:make-moment 2 4)   
  a8 a4. a4 r4 
 \bar "|."
\endm
\varA
\set Score.measureLength = #(ly:make-moment 3 8) 
c8\startTextSpan \slurDown
\afterGrace c4( { \stdB b8\stopTextSpan) \stdE } \slurNeutral \bar "||"
\varB
\set Score.measureLength = #(ly:make-moment 2 8)
c8\noBeam\startTextSpan c16( b\stopTextSpan) 
\bar "|."
}
\addlyrics { Ма- ма на Ко- ля ду- ма- ше: Ко- лю льо, е- дин на ма- ма }
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
  opus = "ВА-2,1,20"
  tagline = ##f
}


