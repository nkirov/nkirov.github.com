%{
TD_181_1_27
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 144
  \time 2/4
 a'4 bes a g a2 g8( f) f4 g2 
a8( bes) a( g) f( ees) d( ees) f4.( g8) f( ees) d4 d2  
\bar "|." 
s4 \fixB b4  
\bar "|." 
}
\addlyrics { Ми- тьо на Де- на ду- ма- ше: Кой, Де- не, кой ка- то на- зи }
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
		tempoWholesPerMinute = #(ly:make-moment 144 4)
		}
	}
}
%
\header{
%%   title = "Митю на Дена думаше"
  composer = "ТД-181,1,27"
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


