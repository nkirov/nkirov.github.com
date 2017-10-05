%{
TD_140_1_26
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 144
  \time 2/4
a8( g) g( a) 
\parS
g2-\parenthesize-\rtoe  \acciaccatura g8 a4 a8( g) a4 a8( g) 
g( \afterGrace f\( { \stdB g\) \stdE } f e) g4 g
\acciaccatura a8 g( f4 e8)
\set Score.measureLength = #(ly:make-moment 3 4) 
 \override Glissando #'style = #'zigzag
\acciaccatura f8 g4 \noteFix g\glissando \hideNotes c,4  \unHideNotes 
\set Score.measureLength = #(ly:make-moment 2 4)
 d d d2
 \bar "|." 
 \fixB d4  
 \bar "|." 
}
\addlyrics { Син- ко Ми- ли- не, Ми- ли- не, раз- бо- лял са йе " " млад  Ми- лин }
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
  opus = "ТД-140,1,26"
  tagline = ##f
}



