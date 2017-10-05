%{
TD_171_1_08
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 120
  \time 2/4
\varA
f8\startTextSpan( g)  g( f\stopTextSpan) 
f2 f8( g) g16( f ees8) f( g) f( ees) d2 f4 f8( ees) d2 f4 
f8( ees) d d4. d2
 \bar "|."
\endm 
\varA
f8\startTextSpan( g)  g16( f g8\stopTextSpan)  
\bar "|." 
}
\addlyrics { Сто- ян ма- ма си ду- ма- ше: Ми- ла ми~й, ма- мо, Дра- га- на }
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
  opus = "ТД-171,1,8"
  tagline = ##f
}



