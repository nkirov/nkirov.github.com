%{
td_140_1_32
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 116
\cadenzaOn
\override Glissando #'style = #'zigzag
f4 g2. \acciaccatura b8 c1^"↓"(~ c4 d16[ c b8] c[ b16 c]) b4^\ltoe 
\acciaccatura aes8 g1(~ g8[\glissando c]) b4 aes!8[( g]) 
\bar ""
f1~ f2 r4 \bar ""
f g2. \acciaccatura b8 c1^"↓"( d16[ c b8] c8.[ b16] c8[ b16 c]) b4
\acciaccatura aes!8 g2(~ g8[\glissando  c]) 
b4 \acciaccatura aes!8 g1~ g2 r4 g g1~ g2
 \bar "|." 
s4 \fixB d
 \bar "|."  
}
\addlyrics { Слън- це- то треп- на да зай- де, Мар- ко си ля- ха от- ся- а- ка  }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 116 4)
		}
	}
}
%
\header{
  opus = "ТД-140,1,32"
  tagline = ##f
}


