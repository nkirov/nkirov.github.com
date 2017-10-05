%{
BA_2_2_41
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
e4 d8( c) | c4 bes8( a) | c4 c8( bes) | a4 a | a a8( g) | d'4 d8( c) | c4 bes8( a) | c4 c8( bes) | g4 g | g g 
 \bar "|." 
}
\addlyrics { По- хва- ли са бу- ля със ка- ли- на, по- хва- ли са бу- ля със ка- ли- на }
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
  opus = "ВА-2,2,41"
  tagline = ##f
}


