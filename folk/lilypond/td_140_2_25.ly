%{
TD_140_2_25
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 152
  \time 2/4
 a4 g \acciaccatura b8 c4.( b16 d) c8\mordent( b) a( g) \acciaccatura b8 c4 
 c8\mordent( b) a4.( g8) 
 \acciaccatura b8 c( b) a( g) a4.( g8) \acciaccatura g8 a4 a8 b\noBeam a4 g g2
 \bar "|." 
 \fixB g4  
 \bar "|." 
}
\addlyrics { Ка- ле- сал Па- вел, ка- ле- сал сест- ра си Я- нин- ка за сват- ба }
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
  opus = "ТД-140,2,25"
  tagline = ##f
}


