%{
TD_093_2_06
%}

\include "td-preamble.ly"

\score {
\relative c'' {
% \tempo 4 = 152
\time 2/4 
\parG
\acciaccatura \parenthesize g8 a4 a | g4. a8 | a4 g | a8( g4) g8 | f4 e | e r |
f4 g8( a) g4. a8 | a4 g | \times 2/3 { g16([ f e] } f4) f8  e4 e | e2\fermata
 \bar "|." 
}
\addlyrics { За- пя- ли са два сла- ве- я "в гар-" ди- на,
 за- пя- ли са два сла- ве- я "в гар-" ди- на }
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
%
\header{
  opus = "ТД-93,2,6"
  tagline = ##f
}


