%{
laz_181_1_09
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 160
 \time 2/4
\acciaccatura d8 e4 c | 
\varA
e8\startTextSpan( f) g4\stopTextSpan | 
\varB
g8\startTextSpan( f) f( e\stopTextSpan) | 
d4.( c8) |
\varC
\acciaccatura d8\startTextSpan e4 c\stopTextSpan | 
\acciaccatura e8 f4 f8( e) | 
\varD
d4\startTextSpan d\stopTextSpan | 
d2
 \bar "|."
 s4 \fixB cis \fixC
\bar "|." 
\endm
\varA
e8\startTextSpan( f) g8( a\stopTextSpan) \bar "||"
\varB
g4\startTextSpan f8( e\stopTextSpan) \bar "||"
\varC
\acciaccatura d8\startTextSpan e4 c8\noBeam c\stopTextSpan \bar "||"
\varD
d8\startTextSpan d4.\stopTextSpan 
\bar "|." 
}
\addlyrics { За- спа- ло ми~й ди- тен- це под бял- чър- вен трин- да- фел }
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
%
\header{
  opus = "ТД-181,1,9"
  tagline = ##f
}


