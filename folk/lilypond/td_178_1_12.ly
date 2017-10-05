%{
TD_178_1_12
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 152
  \time 2/4
  g4 d8( c) d2 g4( a16[ g f8)] f( e) d([ c)] d4.( e8) f4( g16[ f e8)] d( e) d([ c)]
  d4 e f8( g) e([ d)] d2 d2
 \bar ":|" 
}
\addlyrics { Ка- ми- ла- рю, го- ве- да- рю, из- ве- ди ма от таз го- ра }
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

\header{
  opus = "ТД-178,1,12"
  tagline = ##f
}


