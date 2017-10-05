%{
TD_121_1_15
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 152
  \time 2/4
\repeat volta 2 { g4 a | a8( c4.) | d8( e4.) | d4 c | c8( d) d( e) | d8 c4. | 
\varA
\acciaccatura c8\startTextSpan d4 d8.( c16\stopTextSpan) | 
c8( bes) a4 }
\alternative { { a4 r4 | d8( e4.) }
{ a,2 | a2 } }
 \bar "|." 
 s4 \fixB a,4 \fixC
 \bar "|."
 \endm
\varA
\acciaccatura c'8\startTextSpan d4 d8.( e16\stopTextSpan)
 \bar "|."
}
\addlyrics { Тот- ка и- ма чер- ни о- чи, ша- ла- ви са, па- ла- ви са ви са }
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
  opus = "ТД-121,1,15"
  tagline = ##f
}


