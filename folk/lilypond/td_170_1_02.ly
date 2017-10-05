%{
TD_70_1_02
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 144
  \time 2/4
  d4 d | d8( e) f( e) | 
  \acciaccatura e8 f4( \grace { \stdB f8\( \stdE } e16\) d e8) |
 d4 d8( e) |
 \acciaccatura e8 f4( \grace { \stdB f8\( \stdE } e\) d)  |
 \acciaccatura e8 f4 f8( e) |
 d4 d8( e) | d2~ | d | d8( c) d4 | d2~ | d 
 \bar "||"  %%\break
\varA
d4\startTextSpan d\stopTextSpan  
d8( e) f( e) |
 \acciaccatura e8 f4( \grace { \stdB f8\( \stdE } e16\) d e8) |
d( c) d( e)
 \acciaccatura e8 f( e d4)  \acciaccatura e8 f4 f8( e) d4 d8( e) d2~ d d8( c) d4 d2\fermata 
 \bar "|."
\endm
\varA
d4\startTextSpan d8( c\stopTextSpan) 
\bar "|."
}
\addlyrics { Сбра- ли, че са са съ- бра- ли ям- бол- ци, о- ще кар- гон- ци
 ям- бол- ци, о- ще кар- гон- ци, сли- вен- ски- те чор- ба- джи- и }
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
  opus = "ТД-170,1,2"
  tagline = ##f
}


