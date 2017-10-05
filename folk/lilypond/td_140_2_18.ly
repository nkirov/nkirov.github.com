%{
TD_140_2_18
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 160
  \time 2/4
g4 g a4.( b8) c( b) a( g) g4 f8( e) d2 a'8( g) a4 
\varA
g8.\startTextSpan([ a16] g8[ f16 e\stopTextSpan)] 
\acciaccatura f8 g4 f8( e) d4 d d2
 \bar "|." 
 s4 \fixB f4  \fixC 
 \bar "|."
\endm 
\varA
 g4\startTextSpan( f8 e\stopTextSpan)
 \bar "|."
}
\addlyrics { Ле- льо льо, ми- ла и дра- га, ле- льо льо, ми- ла и дра- га }
%
\layout {
  indent = #0
  line-width = 190\mm
  ragged-right=##f
%%   ragged-last = ##t
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
  opus = "ТД-140,2,18"
  tagline = ##f
}


