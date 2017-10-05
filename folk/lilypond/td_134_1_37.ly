%{
td_134_1_34
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 144
\time 2/4
\phrasingSlurDown
g4 a | a a | c b8[( a]) | g4 g | d' d8 c\noBeam | c[( b]) g4 |
\varA
c\startTextSpan( \grace { d8\( } c\)[ b\stopTextSpan]) | 
a4 r | b4. a8 | fis4 g | a2 | a4 r
 \bar "|." 
s4 \fixB f \fixC
  \bar "|." 
\endm  
\varA
c'4.\startTextSpan( b8\stopTextSpan) 
 \bar "|." 

}
\addlyrics { Дош- ли сме ви доб- ри гос- ти, ста- ни ми, ни- ня, ни- ня, 
ни- ня го- спо- ди- ня }
%
\layout {
%   \context { 
%	    \Staff \remove "Time_signature_engraver" } 
  indent = #0
  line-width = 190\mm
  ragged-right=##f
}
%
\midi { 
	\context {
		\Score tempoWholesPerMinute = #(ly:make-moment 144 4)
		}
	}
}
%
\header{
  opus = "ТД-134,1,37"
  tagline = ##f
}


