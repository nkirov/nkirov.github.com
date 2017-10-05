%{
TD_140_2_26
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 152
  \time 2/4
 g4 a a \acciaccatura b8 c4 \acciaccatura c8 b4.( a8) g2 \acciaccatura b8 c4 c8( b)
 g4 a \time 3/4 a2. \time 2/4 a2
 \bar "|." 
 \fixB g4  
 \bar "|." 
}
\addlyrics { Въл- чо ма- ма ду- ма: Ма- мо, ми- ла ма- мо }
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
  opus = "ТД-140,2,26"
  tagline = ##f
}

\paper  {
	 myStaffSize = #20
	 #(define fonts
	 (make-pango-font-tree "Times New Roman"
	 "Nimbus Sans"
	 "Luxi Mono"
	 (/ myStaffSize 20)))
  }

