%{
TD_121_1_10
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 116
%\time 5/16
\cadenzaOn
g16 a\noBeam~ a4 d c d e e d c8\prall[( b]) a4 r 
c16 d\noBeam~ d4 d \acciaccatura { c16[ b a] } b4. c8 d4 e8 c[( d]) d4 d
 \bar "|." 
s4 \fixB c
  \bar "|." 
}
\addlyrics { Шу- ми го- ра, на ро- син ми- ри- ше. Да- ли ми са~й 
ро- син раз- ро- си- ло }
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
		tempoWholesPerMinute = #(ly:make-moment 116 4)
		}
	}
}
%
\header{
  opus = "ТД-121,1,10"
  tagline = ##f
}


