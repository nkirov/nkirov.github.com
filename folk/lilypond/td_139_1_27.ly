%{
TD_139_1_27
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 69
%\time 5/16
\cadenzaOn
\override Glissando #'style = #'zigzag
\phrasingSlurDown
e4 \acciaccatura g8 a2.( b8[ a16\prall g] \grace { a16[\( b a] } g8\)) r
\acciaccatura g8 \afterGrace a4\( { b16[ a g]\) } 
\acciaccatura a8 \afterGrace g([\( { \stdB f8\) \stdE } e]) e4 g1 r4
\bar ""
\acciaccatura g8 a2( \times 2/3 { b16[ a g] } \grace { a16[\( b a] } g8\))
\acciaccatura { g16[ f] } e4( g) g^\ltoe\glissando e2~ e8 r16 d e4 e2.( d8) r
\bar ""
e[( s^\ltoe d]) \afterGrace g2(\( { f16[ e]\) } g4) g8[\prall( f]) e2~ e8. \breathe
d16\noBeam e4 e1
 \bar "|." 
s4 \fixB g
 \bar "|."  
}
\addlyrics { Дуй- ни, дуй- ни, вя- тро, вя- тро Тун- джа- а- ли- я, 
та раз- не- си- и вят- ро }
%
\layout {
     \context { 
	    \Staff \remove "Time_signature_engraver" } 
  indent = #0
  line-width = 190\mm
  ragged-right=##f
}
%
\midi { 
	\context {
		\Score
		tempoWholesPerMinute = #(ly:make-moment 69 4)
		}
	}
}
%
\header{
  opus = "ТД-139,1,27"
  tagline = ##f
}


