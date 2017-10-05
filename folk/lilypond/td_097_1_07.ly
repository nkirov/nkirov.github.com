%{
TD_097_1_07
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 116
%\time 5/16
\cadenzaOn
\phrasingSlurDown
\override Glissando #'style = #'zigzag
d4 \acciaccatura d8 c[( b]) a4 \acciaccatura c8 \afterGrace d2.\( { c16[ d]\) }
\acciaccatura { c16[ b] } a2. b8 c\noBeam( d4^\rtoe) \acciaccatura { d16[ c] } b1\fermata
r4 r
\bar ""
d4 \acciaccatura d8 c[( b]) a4 \acciaccatura c8 d2. c16[( d c b] c8[\glissando b])
b a\noBeam~ a4 a1\fermata
 \bar "|." 
s4 \fixB b,
 \bar "|."  
}
\addlyrics { Слън- чи- це ми- ло ма- ми- но, да- ли ти ма- ма за- ръ- ча }
%
\layout {
     \context { 
	    \Staff \remove "Time_signature_engraver" } 
  indent = #0
  line-width = 190\mm
  ragged-right=##f
}
%
\midi { 
	\context {
		\Score
		tempoWholesPerMinute = #(ly:make-moment 116 4)
		}
	}
}
%
\header{
  opus = "ТД-97,1,7"
  tagline = ##f
}


