%{
TD_121_1_16
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 160
 \time 2/4
\varA
g8\startTextSpan a4 g8\stopTextSpan | 
a8( b) c4 | c8\prall([ b)] a4 | 
\override Glissando #'style = #'zigzag
\varB
\noteFix \afterGrace b2\startTextSpan\(\glissando { \stdB d8\stopTextSpan\) \stdE } |
d8^"↑" c8\noBeam( b) g | a( b) c4 | b8( g) a4 |
\varC
a4.\startTextSpan( b8\stopTextSpan) | 
c8 b8\noBeam( b) g | a( b) c4 | 
\varD
b8\startTextSpan( g) a4\stopTextSpan | 
a2
 \bar "|." 
 s4 \fixB bes,4 \fixC
 \bar "|."
 \endm
\varA
g'4\startTextSpan a8\noBeam a8\stopTextSpan \bar "||"
\varB
a8\startTextSpan( b4.\stopTextSpan) \bar "||"
\varC
\set Score.measureLength = #(ly:make-moment 3 4)
s4\startTextSpan a2\stopTextSpan \bar "||"
\set Score.measureLength = #(ly:make-moment 2 4)
\varD
b8\startTextSpan a4.\stopTextSpan 
 \bar "|."
}
\addlyrics { Сто- ян на ни- ва о- ти- ва, на ни- ва, на бу- рян- ли- ва, 
на ни- ва, на бу- рян- ли- ва }
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
  opus = "ТД-121,1,16"
  tagline = ##f
}


