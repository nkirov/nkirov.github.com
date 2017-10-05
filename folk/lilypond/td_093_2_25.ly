%{
TD_093_2_25
%}

\include "td-preamble.ly"

\score {
\relative c'' {
% \tempo 4 = 152
 \time 2/4
% \tempo 8 = 168
% \time 7/16
\parS
e4 e8( d) | e( d) d( c) | d4 d8( c) | e4 e8( d) | e16([ d c8] d[ c16 b]) | a2-\parenthesize\fermata |
\break
a4 b8( c) | b( a) g4 | a b8( c) | b( a) b( c) | a2 | a2\fermata
 \bar "|." 
}
\addlyrics { Ся- ла~й мо- ма бо- си- лик "в гар-" ди- на,
не из- ник- на бо- си- лик "в гар-" ди- на }
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
  opus = "ТД-93,2,25"
  tagline = ##f
}


