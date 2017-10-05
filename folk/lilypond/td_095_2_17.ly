%{
laz_095_2_17
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 8 = 176
 \time 2/8
 a16( g) g8 | a16( g) a( b) | g8 a16( b) a8( \times 2/3 { b16[ a g]) } |
 g8\noBeam g | a16([ g]) a( b) | g8\noBeam a | a4
 \bar ":|" 
}
\addlyrics { Зас- па- ло ми ди- тен- ци, зас- па- ло ми ди- тен- ци }
%
\layout {
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
  opus = "ТД-95,2,17"
  tagline = ##f
}


