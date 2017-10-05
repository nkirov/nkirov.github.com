%{
TD_139_1_26
%}

\include "td-preamble.ly"
\include "makam.ly"

\score {
\relative c' {
\tempo 4 = 66
%\time 5/16
\cadenzaOn
e4 \acciaccatura g8 a2.( b8[ a32 b a g^↑] a[ b a g]~ g16) r a8.^\rtoe[( g16]) 
g16.^\rtoe[( f32 e8]) 
e4 g1 r4
\bar ""
a2\mordent( \times 2/3 { b16[ a g] } \grace { a16[\( b a] } g8\)) g16.[( f32 e8] g4) \breathe
\acciaccatura { g16[ a g f] } e4 e2. r8 d e4 \afterGrace e2.\( { f16[ e d]\) } r4
\bar ""
e8[( fc]) \afterGrace g2(\( { f16[ e]\) } g4) g8.[( f16]) 
\acciaccatura { g16[ f] } e2. e4^\ltoe e2.
 \bar "|." 
s4 \fixB fb
 \bar "|."  
}
\addlyrics { Слън- це, яс- но слън- це, ко- му ма- ма -а ре- че, ре- че и по- ръ- ча }
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
		tempoWholesPerMinute = #(ly:make-moment 66 4)
		}
	}
}
%
\header{
  opus = "ТД-139,1,26"
  tagline = ##f
}


