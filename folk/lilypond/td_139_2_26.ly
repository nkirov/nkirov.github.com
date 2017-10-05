%{
TD_139_2_26
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 132
  \time 2/4
 a4 d8 d\noBeam c( d) a4 d8( c) c( b) a2 a8( b) g4 g c c8( b^"(↓)") a4 a2
 \bar "|." 
 s4 \fixB d,4 
 \bar "|."
}
\addlyrics { Съб- ра- ли ми са, наб- ра- ли де- ве- ти- на де- ли- и }
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
		tempoWholesPerMinute = #(ly:make-moment 132 4)
		}
	}
}

\header{
  opus = "ТД-139,2,26"
  tagline = ##f
}


