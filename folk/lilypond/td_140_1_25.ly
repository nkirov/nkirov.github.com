%{
TD_140_1_25
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 152
  \time 2/4
d4 e  \acciaccatura g8 a2^\rtoe g4  \acciaccatura g8 a4 
\acciaccatura { b16[ a] } g2^\rtoe g8( f) e4 g4  \acciaccatura g8 a4
a8( g4^\rtoe a8)  \acciaccatura b8 a4 
 \override Glissando #'style = #'zigzag
\noteFi g8\glissando( f) e2^\rtoe e4 e4\fermata
 \bar "|." 
 \fixB e4  
 \bar "|." 
}
\addlyrics { И- ван на Ра- да ду- ма- ше: Лю- бе Ра- де ле, Ра- де ле  }
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
  opus = "ТД-140,1,25"
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

