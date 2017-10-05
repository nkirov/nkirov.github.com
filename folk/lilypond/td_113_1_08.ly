%{
sva_113_1_08
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 8 = 176
%\time 2/4
\cadenzaOn 
\acciaccatura c8 d c16([ bes]) a8 \acciaccatura c8 d2( e32[ d c16] d[ c]) 
\acciaccatura c8 d\noBeam c16([ bes!]) 
\varA
a16\startTextSpan\noBeam a( c2\stopTextSpan\fermata) r8
\acciaccatura c8 d c16([ bes]) 
\varB
a16\startTextSpan\noBeam a16( c4. d16.[ c32])  
\acciaccatura c8 d\noBeam c16([ bes!\stopTextSpan]) 
 \bar ""
\varC
a16\startTextSpan\noBeam a~ a2\stopTextSpan\fermata
 \bar "|." 
 s4 \fixB c, \fixC
  \bar "|."
%%\endm  
\varA
a'8\startTextSpan\noBeam \acciaccatura a c2\stopTextSpan\fermata \bar "||"
\varB
a16\startTextSpan[( bes]) c4.( d4)  
c16 \afterGrace c8(\noBeam { \stdB b\stopTextSpan)  \stdE } \bar "||"
\varC
a8\startTextSpan\noBeam a2\stopTextSpan\fermata
  \bar "|."  
}
\addlyrics { Треп- на- ли са де- вят си- та, де- вят си- та ко- при- ня- ни }
%
\layout {
   \context { \Staff \remove "Time_signature_engraver" } 
  indent = #0
  line-width = 190\mm
  ragged-right=##f
}
%
\midi { 
	\context {
		\Score
		tempoWholesPerMinute = #(ly:make-moment 176 8)
		}
	}
}
%
\header{
  opus = "ТД-113,1,8"
  tagline = ##f
}


