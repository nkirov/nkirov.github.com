%{
laz_179_2_07
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 152
 \time 2/4
f4 f8( e) | d2 | \acciaccatura e8 f4 f8( e) | f4 f8( e) | d2 | 
\parS
d8-\parenthesize\prall( c) d( e) |
f4( g16[ f e8]) | d4 d8( c) | d8 d4. | d4 r
 \bar "|." 
 s4 \fixB d
 \bar "|." 
 }
\addlyrics { Бул- че на гра- да си- де- ше, ви- то си вин- че ви- е ше }
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
  opus = "ТД-179,2,7"
  tagline = ##f
}


