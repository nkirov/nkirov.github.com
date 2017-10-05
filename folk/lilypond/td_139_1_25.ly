%{
TD_139_1_25
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 80
%\time 5/16
\cadenzaOn
\phrasingSlurDown
b8[( c]) c[( \grace { \stdB d\( \stdE } c\)] b4) \acciaccatura c8 d[( c16\prall b]
c1 d8[ c16\prall b32 c] d[ c b c] d[ c b16]) r4 c\prall 
\acciaccatura { d16[ c b] } a4
\bar ""
b2.( \afterGrace c4\( { b16[ c]\) } \grace { d16[\( c] } b4\))
\times 2/3 { c8[( b a]) } g2. r4 b8[( a]) a2^\ltoe(~ a8[ g])
\acciaccatura a8 b^↑[( a16\prall gis] a2.
\bar ""
b16.[ c32 b16 a] g2.) r4 r8
f8 \acciaccatura b \afterGrace c2.(\( { d16[ c b]\) } c4) 
\acciaccatura c8 b4.( a8) a4^\ltoe g2.( f4) g1
 \bar "|." 
s4 \fixB fis
 \bar "|."  
}
\addlyrics { Ра- де ле, бя- ло ху- ба- во, Ра- да йе и жът- ва жъ- на- ла }
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
  opus = "ТД-139,1,25"
  tagline = ##f
}


