%{
td_138_2_02
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 100
\cadenzaOn
\phrasingSlurDown
\acciaccatura b8 c4 c2.( d16[ c b8]) d8 
\varA
d16\startTextSpan[( c] b4. a8) \acciaccatura { b16[ a] } 
\afterGrace g1(\( { \stdB a8\stopTextSpan\) \stdE } 
b2. c16[ b a8]) \bar ""
a\prall[( g]) g4( \grace { a16[\( g] } f8[\) e]) e1 r4
\bar ""
\acciaccatura f8 g4 \bar "" g8.([ f16] e4~ e8) \bar "" f\noBeam g4.( a8 b4) 
a\prall( g4. f8 e\noBeam) r \acciaccatura f g4 g\prall( f8[ e]) e1~ e4
 \bar "|." 
s4 \fixB b \fixC
  \bar "|." 
 s16 \clef treble
\varA
d'16\startTextSpan[( c] b2) \acciaccatura { a16[ b a] } 
\afterGrace g1\( { \stdB a8\stopTextSpan\) \stdE } 
  \bar "|."  
}
\addlyrics { Ян- чи- ца, ма- мо, Ян- чи- ца, Ян- чи- ца дво- ря ме- те- ше }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 100 4)
		}
	}
}
%
\header{
  opus = "ТД-138,2,2"
  tagline = ##f
}


