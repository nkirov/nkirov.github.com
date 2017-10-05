%{
TD_113_1_16
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 120
%%  \time 2/4
\cadenzaOn
a4 b \bar "|" c8 c16([ b]) a4~  \bar "|" a2\fermata \bar "|" 
b8\noBeam^\ltoe b^\rtoe b4~( \bar "|" b a8\prall[ g]) r4 \bar "|"
\break
\parS
a8-\parenthesize\prall([ g]) \acciaccatura a8 b8.\noBeam a16 \bar "|" 
b16\prall([ a]) a4.~ \bar "|" a4. a8 \bar "|" a16\noBeam a8. a4\fermata  
 \bar "|." 
 s4 \fixB g4 
 \bar "|."
}
\addlyrics { Тез Ба- ка- лов' ти дъ- ще- ри мно- го са хо- ра из- лъ- га- ли }
%
\layout {
  indent = #0
  line-width = 190\mm
  ragged-right=##f
  \context { \Staff \remove "Time_signature_engraver" }
}
%
\midi { 
	\context {
		\Score
		tempoWholesPerMinute = #(ly:make-moment 120 4)
		}
	}
}
%
\header{
  opus = "ТД-113,1,16"
  tagline = ##f
}


