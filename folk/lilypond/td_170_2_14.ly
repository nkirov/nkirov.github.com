%{
TD_170_2_14
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 138
  \time 2/4
 d4. ees8 d2 f8( g) f( g) f( e) f( g) f4.( ees8) 
 d4. f8 ees2 ees8( f) f4 ees8( d) d4 d2
 \bar "|." 
}
\addlyrics { Бу- ля Ка- ли- на ду- ма- ше: Ка- ли- но, дюл- бер Ма- ли- но }
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
  opus = "ТД-170,2,14"
  tagline = ##f
}


