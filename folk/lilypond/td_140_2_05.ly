%{
sva_140_2_05
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 66
%\time 2/4
\cadenzaOn
\gliss
\par
\override ParenthesesItem #'padding = #0.8
\parenthesize fis8 a2 a a \noteFi \acciaccatura b8\glissando \noteFi c16^"↓"[(\glissando b c b]) 
\parG
\override ParenthesesItem #'padding = #0.4
\afterGrace a2.\(( { g16[ a]\) } g2~ g8) r \parenthesize g \acciaccatura b8 c4.
c8\mordent[( \grace { \stdB a8^"↑"\( \stdE } g\)])
\bar ""
 a2 \afterGrace a4\( { bes16[ a bes a\)] } g2.~ g8 r16 \parenthesize g16\noBeam
bes!16[( c^\ltoe bes8]) a[( s^\ltoe g]) g8.([ fis16] g4~ g8\noBeam) g16[( a]) a2. 
 \bar "|." 
s4 \fixB e
 \bar "|." 
}
\addlyrics { "(е)" Я- бре зе- тьо льо~й, "(и)" 
що стви при те- бе "(и)" тен- ко- ви- со- ко }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 66 4)
		}
	}
}
%
\header{
  opus = "ТД-140,2,5"
  tagline = ##f
}


