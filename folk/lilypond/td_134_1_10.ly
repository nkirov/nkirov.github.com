%{
TD_134_1_10
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 112
%\time 5/16
\cadenzaOn
\override Glissando #'style = #'zigzag
\phrasingSlurDown
 \ii g4 
c4 d16[( \afterGrace c8.]\( { \stdB b8\) \stdE } \afterGrace c1\( { d16[ c b]\) } c8.[ b16])
c4 c( b8[ a]) \acciaccatura b8 c4 b1~ b4 r r
\bar ""
c4 c16[( d c b] c[ d c b] c4\glissando g16[ a c8]) b4 b16.[( a32^↓ g8]~ g4^\ltoe) g2. g1( f4) r r
\bar ""
g8[( aes]) \acciaccatura b8 c2.( \afterGrace d4\( { c16[ b]\) } \grace { c16[\( b] } aes!4\))
c b(\glissando aes!8[ s^\ltoe g]) g2. r4^\rtoe f8[( g]) g4 g1~ g
 \bar "|." 
s4 \fixB a,
 \bar "|."  
}
\addlyrics { и Ма- ма слън- це ду- ма: Слън- це, яс- но слън- це, ко- му ма- ма 
ръ- а- ъ- ча }
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
		tempoWholesPerMinute = #(ly:make-moment 112 4)
		}
	}
}
%
\header{
  opus = "ТД-134,1,10"
  tagline = ##f
}


