%{
TD_096_2_30
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 80
%\time 5/16
\cadenzaOn
\phrasingSlurDown
\override Glissando #'style = #'zigzag
a8[( b16]) \acciaccatura { c16[ d c b] } c2.( \afterGrace d8[\( { c16[ b]\) } c b]
\afterGrace a4\( { \stdB b8\) \stdE } c4^\rtoe) b16 c8.\noBeam 
\acciaccatura { b16[ c b a] } b4( c16[ b a8]~ a4^\rtoe) a1 r4
\bar ""
\acciaccatura b8 c4 \acciaccatura { b16[ c b a] } 
b2.( \afterGrace c8[\( { b16[ c b]\) } a8]~ a[\glissando s^\rtoe c]) b16^\ltoe
\acciaccatura { c16[ b] } a8. a16\noBeam^\ltoe a8.~ a1\fermata
 \bar "|." 
s4 \fixB d,
 \bar "|." 
}
\addlyrics { Брай- не, ру- до сла- вей, всич- ки- ти жът- ва- ри }
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
		tempoWholesPerMinute = #(ly:make-moment 80 4)
		}
	}
}
%
\header{
  opus = "ТД-96,2,30"
  tagline = ##f
}


