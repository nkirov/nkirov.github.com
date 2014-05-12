%{
td_135_1_29
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 176
\time 2/4
g4 a | 
\varA
a\startTextSpan a\stopTextSpan | 
c b8[( a]) | g[( fis]) g4 | \acciaccatura c8 d4 d | a d |
\acciaccatura d8 c4.\trill( b8) | a2 | b4. a8 | 
\varB
g\startTextSpan[( fis]) g4\stopTextSpan | 
a2 | a4 r
 \bar "|." 
s4 \fixB e \fixC
  \bar "|." 
\endm
\varA
a\startTextSpan a8[( b\stopTextSpan]) \bar "||"
\varB
g\startTextSpan[( fis]) g8[( a\stopTextSpan])
  \bar "|."  
}
\addlyrics { Чу- ли сме ва, чу- ли сме ва, чу- ли, та сме до- шли, 
ста- ни го- спо- ди- не }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 176 4)
		}
	}
}
%
\header{
  opus = "ТД-135,1,29"
  tagline = ##f
}


