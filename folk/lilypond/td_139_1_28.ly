%{
TD_139_1_28
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 66
%\time 5/16
\cadenzaOn
\phrasingSlurDown
c8[( b]) c16[( d] \grace { c16[\( d c b] } c8\)~ c2. \grace { d16\([ c b c] } 
d4.\) c8) \acciaccatura c8 \afterGrace b2(\( { c16[ b a b]\) } 
\grace { c16[\( b a] } g4\)) g2 r8 \ii f8 g\noBeam
\bar ""
c8\mordent(~ c2. d8[ \grace { c16[\( d c b] } c8]\) 
\grace { d16[\( c b] } c8.\)[ b16] \grace { a16[\( b] } g8\)) r
\acciaccatura b8 \afterGrace c4\( { d16[ c b]\) } 
\acciaccatura b8 a2.( g4) r8 \ii g a4 a1~ a2
 \bar "|." 
s4 \fixB a
 \bar "|."  
}
\addlyrics { Слън- це зай- дя, и, зад го- ра зе- "(и-)" ле- на }
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
		tempoWholesPerMinute = #(ly:make-moment 66 4)
		}
	}
}
%
\header{
  opus = "ТД-139,1,28"
  tagline = ##f
}


