%{
BA_2_2_10
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
d8( c)^\markup { \sharp }^"↑"  b( a) | d4 d8( c^\markup { \sharp }^"↑") | 
b8( \afterGrace a4.)\( { \stdB c8\) \stdE }  |  
c4 c8 ( b) | a4.( g8) | g4 a8( b) | 
\varA
c4\startTextSpan c8( b\stopTextSpan) | 
a2 | a8 a4. | a4 r4   
 \bar "||"
d4 a | d d8( c) | b8( a4.) | d8( c) c( b) | a4.( g8) | 
\varB
g4\startTextSpan a8( b\stopTextSpan) | 
\varA
c4\startTextSpan c8( b\stopTextSpan) | 
a2 | a8 a4. | a2 
 \bar "|." 
\endm
\varA
\set Score.measureLength = #(ly:make-moment 3 8)
c8\startTextSpan^"(съкратен)"\noBeam c([ b\stopTextSpan)] \bar "||"
\varB
g8\startTextSpan^"(съкратен)"\noBeam a([ b\stopTextSpan)]
 \bar "|." 
}
\addlyrics { И- ван на Рус- ка ду- ма- ше: Рус- ки мо, ру- со мо- ми- че, 
по- пи- тай, Ру- ске, ма- ма си, ма- ма си, Рус- ке, тей- на си }
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
  opus = "ВА-2,2,10"
  tagline = ##f
}


