%{
td_181_1_15
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 100
\cadenzaOn
\parS
d4 d8 e\noBeam d-\parenthesize\prall[( c]) c4 d e8[( d])
\varA
d\startTextSpan( e\noBeam~ e1 d2.\stopTextSpan) 
d4 d8 e\noBeam d8[( c]) c4 d e8[( d]) d1
 \bar "|." 
s4 \fixB d \fixC
  \bar "|."
s16 \clef treble  
\varA
d8\startTextSpan( e\noBeam~ e2. d4. a8\stopTextSpan) 
 \bar "|."   
}
\addlyrics { От- до- лу и- дат, ма- ле мо, три- ста ми, ма- мо, ге- мий- ки }
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
  opus = "ТД-181,1,15"
  tagline = ##f
}


