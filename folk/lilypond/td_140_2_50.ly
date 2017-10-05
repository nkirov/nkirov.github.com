%{
TD_140_2_50
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 160
  \time 2/4
 d4 d8( e) e( d) d( c) c( b) a4 b b \acciaccatura c8 d4 d c8( b) c\mordent( d)
d( c4^\rtoe b8)  \acciaccatura c b( a) a4 a2
 \bar "|." 
 s4 \fixB fis4  
 \bar "|." 
}
\addlyrics { Ди- ми тър ду- ма То- дор- ке, Ди- ми тър ду- ма То- дор- ке }
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
		tempoWholesPerMinute = #(ly:make-moment 160 4)
		}
	}
}

\header{
  opus = "ТД-140,2,50"
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

