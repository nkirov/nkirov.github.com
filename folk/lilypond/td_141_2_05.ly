%{
sva_141_2_05
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%\tempo 4 = 120
%\time 2/4
\cadenzaOn
\phrasingSlurDown
a4 a2.( g4^\ltoe) c( d16[ c b8]) a4\prall( g4.) r8 
\varA
b4\startTextSpan( d16[ c b8\stopTextSpan]) 
a8\noBeam a( g4) b2( a8) a4.( g4) r 
\bar "" \break
a8 a4. \acciaccatura b8 c4( d16[ c b g]) a4.( g8) \breathe
\afterGrace b4\prall\( { d16[ c b]\) } a8 a4.^\rtoe a2.
 \bar "|." 
 s4 \fixB c, \fixC
 \bar "|." 
  s16 \clef treble
\varA
c'4\startTextSpan( d16[ c b8\stopTextSpan]) 
 \bar "|."  
}
\addlyrics { Ко- га си май- ка гла- ве- ше, и  не- му си пръ- стен ле- е- ше }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 120 4)
		}
	}
}
%
\header{
  opus = "ТД-141,2,5"
  tagline = ##f
}


