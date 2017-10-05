%{
TD_171_1_07
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 144
  \time 2/4
g4 g8( a) a( g) g( f) e( d) d4 g f8( g) g( f) e( d) e4 e d8( e) f( g) g4 f4 e8( d) d4 e f e8( d) d4 d d 
\bar "|." 
}
\addlyrics { Дой- на дво- ри ме- ла, дво- ри ка- то по- ли, 
Дой- на дво- ри ме- ла, дво- ри ка- то по- ли }
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

\header{
  opus = "ТД-171,1,7"
  tagline = ##f
}


