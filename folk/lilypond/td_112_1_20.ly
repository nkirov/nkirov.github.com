%{
td_112_1_20
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 168
\time 2/4
%\cadenzaOn
\repeat volta 2 { 
\varA  
  c4\startTextSpan c8[( bes\stopTextSpan^"↑"]) | 
a4. g8 | a8[( bes]) a[( g]) }
 \alternative { { g4 g } { g8[( f]) g[( a]) } }
 \repeat volta 2 { g4 f8 e\noBeam | d4. c8 | e[( f]) g4 }
  \alternative { { g8[( f]) g[( a])  } {  g4 g } }
 \bar "|." 
s4 \fixB b, \fixC
  \bar "|." 
\endm
\varA
\acciaccatura b'8\startTextSpan c4 \slurDown
\afterGrace c( { d16[ c b\stopTextSpan]) }
  \bar "|."  
}
\addlyrics { Ма- ри бу- льо Ган- до- ви- це, ви- це,
къ- дя о- ти- ди ба- ти Ган- до Ган- до }
%
\layout {
%   \context { 
%	    \Staff \remove "Time_signature_engraver" } 
  indent = #0
  line-width = 190\mm
  ragged-right=##f
}
%
\midi { 
	\context {
		\Score tempoWholesPerMinute = #(ly:make-moment 168 4)
		}
	}
}
%
\header{
  opus = "ТД-112,1,20"
  tagline = ##f
}


