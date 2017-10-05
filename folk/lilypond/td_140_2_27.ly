%{
TD_140_2_27
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 152
  \time 2/4
 \acciaccatura c8 d4 c8( b) c4 d8( c) c2\mordent \acciaccatura c8 b4 b16( a g a)
 g2 g8( a) b( c) 
  \acciaccatura c8 b4 b8( a^"↓") \time 3/4 g2. \time 2/4 g4^\ltoe g^\rtoe g2
 \bar "|." 
 \fixB e4  
 \bar "|." 
}
\addlyrics { Су- баш- че Ста- на ду- ма- ше: Ста- но ма- ри, бя- ла Ста- но }
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
  opus = "ТД-140,2,27"
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

