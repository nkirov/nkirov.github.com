%{
TD_140_1_30
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 144
  \time 2/4
 e4 e8 d\noBeam g4 \acciaccatura g8 a4 
 \parS
 g2-\parenthesize-\rtoe \acciaccatura g8 a4 a8( g) 
 \acciaccatura g8 a4 a8 g\noBeam 
 \varA
 g4\startTextSpan f8( d\stopTextSpan) 
 \time 3/4 e2. e4 e2 
 \set Score.measureLength = #(ly:make-moment 2 4)  
 \bar "|." 
 s4 \fixB e4 \fixC 
 \bar "|."
\endm 
\varA
 \acciaccatura a8\startTextSpan g([ f)] e4\stopTextSpan  
 \bar "|."
}
\addlyrics { Син- ко Ка- лин- ко, Ка- лин- ко, раз- бо- ля- ла са Ка- лин- ка }
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
		tempoWholesPerMinute = #(ly:make-moment 144 4)
		}
	}
}

\header{
  opus = "ТД-140,1,30"
  tagline = ##f
}


