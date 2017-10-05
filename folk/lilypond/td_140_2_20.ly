%{
TD_140_2_20
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 160
  \time 2/4
g4 \acciaccatura g8 a4 g a 
\par
\varA
g\startTextSpan( fis\stopTextSpan)
g a8( g) f( e d[ c)] 
\varB
\acciaccatura f8\startTextSpan g4  \acciaccatura g8 a4\stopTextSpan 
\break
f8( e) f( e) \parS d2-\parenthesize-\rtoe d8( c) d4 d2
 \bar "|." 
 s8 \fixB d4 \fixC s8 
 \bar "|."
\endm
\varA
g4\startTextSpan( f!\stopTextSpan) \bar "||"
\varB
\acciaccatura f8\startTextSpan g4  a8( g\stopTextSpan)  
\bar "|."
}
\addlyrics { Ма- ма Сто- я- на ду- ма- ше: Син- ко Сто- я- не, Сто- я- не }
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
  opus = "ТД-140,2,20"
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

