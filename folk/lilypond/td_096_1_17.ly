%{
TD_096_1_17
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 108
%\time 5/16
\cadenzaOn
\override Glissando #'style = #'zigzag
g4 b2( \noteF d8.[\glissando c16]) c8[( b]) b2^\ltoe( \times 2/3 { a8[ b a] } g4)
g \acciaccatura a8 b2( d4) c8[( b]) b1\fermata r4
\bar ""
g4 b2^\rtoe( d4) d8[( c]) c2( \times 2/3 { b8[ a b)] } 
\noteFi \acciaccatura c8\glissando d4 \acciaccatura { d16[ c] } 
b4( \noteF c8^\ltoe[\glissando b16])
a4 a1\fermata
 \bar "|." 
s4 \fixB fis
 \bar "|."  
}
\addlyrics { Ти- че Ду- нав мъ- тян- ка- лян, ти- че Ду- нав мъ- тян- ка- лян }
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
		tempoWholesPerMinute = #(ly:make-moment 108 4)
		}
	}
}
%
\header{
  opus = "ТД-96,1,17"
  tagline = ##f
}


