%{
laz_181_1_29
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 200
 \time 2/4
a8( g f4) | g a | a2 | 
\varA
g4\startTextSpan a8( g\stopTextSpan) | 
g4 d | \acciaccatura f8 g2 | a4 g |
\break
\varB
f4.\startTextSpan( e8\stopTextSpan) | 
\acciaccatura f8 g4 e8( d) | d2 | d4 r
 \bar "|."
 s4 \fixB bes \fixC
\bar "|."
\endm
\varA
g'4\startTextSpan a\stopTextSpan \bar "||"
\varB
f4.\startTextSpan( \times 2/3 { g16[ f e\stopTextSpan)] }
\bar "|."
}
\addlyrics { Ма- ма Ан- до- не ду- ма- ше: Ан- до- не, си- но Ан- до- не }
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
		tempoWholesPerMinute = #(ly:make-moment 200 4)
		}
	}
}
%
\header{
  opus = "ТД-181,1,29"
  tagline = ##f
}


