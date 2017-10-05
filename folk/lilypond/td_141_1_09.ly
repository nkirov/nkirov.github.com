%{
sva_141_1_09
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 76
%\time 2/4
\cadenzaOn
\override Glissando #'style = #'zigzag
a4.( \grace { b16[\( a] } g8)\) \acciaccatura b8 \noteFi c4.(\glissando bes8)
a4.( g16[ f!]) g4~ g8\noBeam \acciaccatura bes8 c(~ c8.[ bes!16]) a4( g16[ f]) g[( a]) a2. r4
a4 bes 
\bar "" 
\phrasingSlurDown
c16([ d] c32[ d c bes] c4~ \times 2/3 { c16[ bes a } bes8\prall] a4)
bes~ bes8 c8\noBeam~( c[ \grace { d16[\( c] } bes8\))] 
bes8\prall([ a16 g]) a8\noBeam a~ a2.
 \bar "|." 
s4 \fixB ees
  \bar "|." 
}
\addlyrics { Ко- га го май- ка гла- ве- ше, то- газ му пръ- стен ле- я- ше }
%
\layout {
   \context { 
	    \Staff \remove "Time_signature_engraver" } 
  indent = #0
  line-width = 190\mm
  ragged-right=##f
}
%\set Score.measureLength = #(ly:make-moment 3 4)
\midi { 
	\context {
		\Score tempoWholesPerMinute = #(ly:make-moment 76 4)
		}
	}
}
%
\header{
  opus = "ТД-141,1,9"
  tagline = ##f
}


