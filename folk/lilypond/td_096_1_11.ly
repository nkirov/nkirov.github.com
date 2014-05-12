%{
TD_096_1_11
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 8 = 152
%\time 5/16
\cadenzaOn
c8 c16([ b]) a8 b\noBeam^\rtoe c4( \times 2/3 { d16[ c b] } a4) c8 c16[( b]) b2 r8
c c16[( b]) a8 b\noBeam c4^\ltoe( \times 2/3 { d16[ c b] } c8) b\noBeam
a^\ltoe a2.
 \bar "|." 
s4 \fixB fis8
 \bar "|."  
}
\addlyrics {Сит- но въ- рве- ни, Бо- тьо льо,
мил- но гле- да- не, Дон- ки ле! }
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
		tempoWholesPerMinute = #(ly:make-moment 152 8)
		}
	}
}
%
\header{
  opus = "ТД-96,1,11"
  tagline = ##f
}


