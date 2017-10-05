%{
TD_093_1_02
%}

\include "td-preamble.ly"

\score {
\relative c'' {
% \tempo 4 = 152
 \time 2/4
% \tempo 8 = 168
% \time 7/16
\varA
g8\startTextSpan( aes) aes4 | g e\stopTextSpan | 
f g | aes g8( f) | f( e) f4 |
g g8( f) | f( e) e4 | f g8( f) | g4 g16( f e8) | e4 e
 \bar "|."
 \endm
 \varA
 g4\startTextSpan g8( aes) | g( f) e4\stopTextSpan
 \bar "|."
}
\addlyrics { Ка- ра- ли- йо, ка- ра ли та ма- ма, 
ка- ра ли та ра- но, бу- ди ли та }
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
  opus = "ТД-93,1,2"
  tagline = ##f
}


