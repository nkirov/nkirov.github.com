%{
TD_140_4_45
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 126
  \time 2/4
d4 e \acciaccatura g8 a2 b16( a g8 a[ g)] f( e) e4 g^\ltoe a^\ltoe 
g8([ a] g8.\mordent f16) e2 e4^\ltoe e\fermata
 \bar "|." 
 s8 \fixB g4 
 \bar "|." 
}
\addlyrics { Зла- те, мо- ме Зла- те, тръг- на- ла йе Зла- та }
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
		tempoWholesPerMinute = #(ly:make-moment 126 4)
		}
	}
}

\header{
  opus = "ТД-140,2,45"
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

