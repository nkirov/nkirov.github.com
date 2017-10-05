%{
TD_177_1_04
%}

\version "2.11.65"

\score {
\relative c' {
 \tempo 4 = 120
  \time 2/4
d8( e) f4 g8( a) f( g)  \acciaccatura g8 f2 g8( a) f( g) g4( a16 g f e) 
f8( g) \times 2/3 { g8( f e)} f4 f16( ees d ees) d4.( f8) 
\acciaccatura f8 \times 2/3 { ees8( d~ d)} d4 d2
 \bar "|." 
}
\addlyrics { Съ- би ма- ми си ду- ма- ше: Ка- рат ма, ма- мо, ка- рат ма }
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
		tempoWholesPerMinute = #(ly:make-moment 120 4)
		}
	}
}

\header{
  opus = "ТД-177,1,4"
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

