%{
BA_1_2_39
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
e4 e8( d) | c8( b) a4 | b8( c) d4 | d8( c) c8( b) | b4 b | b b | \break
b8( c) d4 | c8( b) a4 | b8( c) d4 | d8( c) c8( b) | b4 b | b4 b  
 \bar "|." 
}
\addlyrics { О- чи, чер- ни о- чи, ша- ла- ви, па- ла- ви, 
о- чи, чер- ни о- чи, ша- ла- ви, па- ла- ви }
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
  opus = "ВА-1,2,39"
  tagline = ##f
}


