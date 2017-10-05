%{
laz_112_1_18
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 160
 \time 2/4
\varA 
b4\startTextSpan c\stopTextSpan | 
d4.( b8) | c4.( b8) | d4.( c16[ b]) | d4. c16[( b]) |
\varB
\afterGrace a2\startTextSpan( { b16[ a g\stopTextSpan]) } | 
g4 c | b4.( a16[ g]) | a4.( g8) |
\varC
\set Score.measureLength = #(ly:make-moment 3 4)
s4\startTextSpan b2\stopTextSpan | 
\set Score.measureLength = #(ly:make-moment 2 4)
a4 c | b2
 \bar "|." 
 s4 \fixB a \fixC
 \bar "|." 
 \endm
\varA 
b4\startTextSpan b8( c\stopTextSpan) \bar "||"
\varB
a4.\startTextSpan\fermata( g8\stopTextSpan)  \bar "||"
\varC
b4.\startTextSpan( a8\stopTextSpan) 
 \bar "|." 
}
\addlyrics { И- ван Ни- де- льо ду- ма- ше: Ни- де- льо, мо- ме ху- ба- ва }
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
		tempoWholesPerMinute = #(ly:make-moment 160 4)
		}
	}
}
%
\header{
  opus = "ТД-112,1,18"
  tagline = ##f
}


