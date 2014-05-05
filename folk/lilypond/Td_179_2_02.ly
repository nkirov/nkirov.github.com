%{
TD_179_2_02
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 152
  \time 2/4
  e8( d) d4  \acciaccatura fis8 \afterGrace g2( { a16[ g fis)] } fis8( e) e([ fis)]
  fis( e d4) fis8( e) e([ d)] e4.( fis8) e( d) d4 d r4 
\bar "|." 
 s4 \fixB cis4  
\bar "|."
}
\addlyrics { Дра- га- но, Дра- ган- ке, слън- це- то три- пе- ре }
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
		tempoWholesPerMinute = #(ly:make-moment 152 4)
		}
	}
}

\header{
  opus = "ТД-179,2,2"
  tagline = ##f
}


