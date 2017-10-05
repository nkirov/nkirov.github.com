%{
TD_178_1_17a
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 138
  \time 2/4 
\acciaccatura d8 e4 e8( d) 
c( b) a4 e'2 e8( d c4) d4 e f e d2 d
 \bar ":|" 
}
\addlyrics { Хай- де, мо- ре, хай- де, ю- наш- ка ги- ди- йо, }
\addlyrics { що на- пре- де вър- виш, а на- за- де гле- даш }
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
		tempoWholesPerMinute = #(ly:make-moment 138 4)
		}
	}
}

\header{
  opus = "ТД-178,1,17a"
  tagline = ##f
}


