%{
laz_178_1_16
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 138
 \time 2/4
c4 f8( e) | d2 | d4.( c8) | \acciaccatura e8 f4 f8( e) | c4 f8( e) | d2 | d4.( c8) | d4 d
 \bar "|." 
}
\addlyrics { На бял ка- мък се- ди, бя- ло ли- це ми- е }
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
%
\header{
  opus = "ТД-178,1,16"
  tagline = ##f
}


