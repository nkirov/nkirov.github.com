%{
TD_140_1_24
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 152
  \time 2/4  
\acciaccatura g8 a( g) g4  
\acciaccatura g8 a8.( b16 a8 g) \acciaccatura g8 a4 \acciaccatura a8 g4
\acciaccatura g8 a4\mordent( g) e e   
\acciaccatura e8 g4 g 
\break
\acciaccatura g8 a8.( b16 a8 g) \acciaccatura f8 g4 g8( f) |
\varA
\set Score.measureLength = #(ly:make-moment 3 4)
s4\startTextSpan e2\stopTextSpan^\rtoe | 
\set Score.measureLength = #(ly:make-moment 2 4)
e4 e\fermata 
 \bar "|." 
s4 \fixB e4 \fixC
 \bar "|." 
\endm 
\varA 
\set Score.measureLength = #(ly:make-moment 4 4)
s4\startTextSpan e2.\stopTextSpan^\rtoe  
\bar "|." 
}
\addlyrics { Стой- ке ле, сна- хо На- не- ва, Стой- ке ле, сна- хо На- не- ва }
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
  opus = "ТД-140,1,24"
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

