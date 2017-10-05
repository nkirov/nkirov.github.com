%{
sva_138_2_25
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 2 = 40
%%\time 2/4
\cadenzaOn
\phrasingSlurDown
\acciaccatura c8 d2. \acciaccatura d8 e([ d32 e d c] d16[ e d c]) \bar ""
\afterGrace b4\(( { c16[ b]\) } a4) b( d8[ c]) \bar ""
\acciaccatura { d16[ c] } b2( c32[ b a b] c[ b a16]~ a2.) r4 \bar ""
\acciaccatura b8 c4( d16[ c b8]) \bar "" 
\acciaccatura c8 d[( e32 d c16] d[ c b8]) 
a2^\ltoe b^\ltoe b1
 \bar "|." 
s4 \fixB a
  \bar "|." 
}
\addlyrics { Мар, хай- де, друж- ко, друж- ко, кар- даш- ко  }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 40 2)
		}
	}
}
%
\header{
  opus = "ТД-138,2,25"
  tagline = ##f
}


