%{
td_140_2_51
%}

\include "td-preamble.ly"
\include "makam.ly"

\score {
\relative c' {
\tempo 4 = 92
\cadenzaOn
\phrasingSlurDown
\override Glissando #'style = #'zigzag
e4 \acciaccatura g8 a2 g32[( a16. g16 fb] \afterGrace g2.\( { f8\) } e8.\prall[ d16])
e4 \acciaccatura g8 a2^\ltoe g4\prall(~ g16[ fc e fc])
\bar ""
g16[( a]) \bar "" a[( g]~ g2.) r4 \bar "" 
b8[( a]) \bar ""  \afterGrace b[(\( { a16[ g]\) } a8]~ a2) \bar ""
\acciaccatura { g16[ a g fb!] } g2(~ g16[ fc! e fc] e4)
\bar ""
\acciaccatura g8 a \noteFi g4^\rtoe(\glissando fb!32[ g a16]) \bar ""
\acciaccatura { g16[ fb!] } e4^\rtoe e8 \bar ""
e\noBeam(~ e2 d8) r r4 \bar "" e16[( fb!]) \bar ""  g8\noBeam(~ g16[ fb! a8])
\bar ""
g16[( fb!] e4.) \acciaccatura g8 a\noBeam \acciaccatura a g(~ g16[ fb! a8]) fb16[( e8.])
e8 e\noBeam~ e2~ e1
 \bar "|." 
s4 \fixB d
 \bar "|."  
}
\addlyrics { "В се-" ло ци- ган- ки дой- до- ха, ци- ган- ки чер- ни, о- май- ни,
у Сто- я- но- ви о- тиш- ли }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 100 4)
		}
	}
}
%
\header{
  opus = "ТД-140,2,51"
  tagline = ##f
}


