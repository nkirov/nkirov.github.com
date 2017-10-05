%{
laz_134_2_33
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 160
\time 2/4
\set Score.measureLength = #(ly:make-moment 1 4)
e4 \bar "||"
\set Score.measureLength = #(ly:make-moment 2 4)
g4( a) | a8\prall( g a\prall g) | 
\varAB
a4\startTextSpan g\prall | f8( e) e4\stopTextSpan | 
\parS
g8( a g16[ a g f]) | e2 | e4-\parenthesize^\ltoe e | e2~ | e\fermata | e
 \bar "|." 
 s4 \fixB d \fixC
 \bar "|." 
 \endm
\varA
 \acciaccatura g8\startTextSpan a4 g8( a) | g8( f) e4\stopTextSpan]  \bar "||"
\varB
g4\startTextSpan g8( f) | e4 e\stopTextSpan
 \bar "|."  
}
\addlyrics { и Я- бре мом- че, мом- че, гриж- но, та~й ка- хър- но }
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
  opus = "ТД-134,2,33"
  tagline = ##f
}


