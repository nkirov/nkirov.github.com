%{
sva_140_2_04
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 66
%\time 2/4
\cadenzaOn
\par
\ii \parenthesize  g8 a2 a a
\gliss
 \noteFi \acciaccatura b8\glissando \noteFi c16.[(\glissando b32 c16 b])
\afterGrace a2.\(( { g16[ a]\) } g2.) r8 
\ii \parenthesize g8 \acciaccatura b8 c2 c32[( b c^\rtoe b^"↓"] a[ g16.]) a2.
\bar ""
\acciaccatura { a16[ bes a bes] } a4 g2.~ g8 r16
\ii \parenthesize g16 \acciaccatura bes8 c[([ s^\ltoe bes!]) a[( s^\ltoe g])
g8.([ f16] g4~ g8\noBeam) g g[( a16]) a16\noBeam~ a2.
 \bar "|." 
s4 \fixB ees
 \bar "|."  
}
\addlyrics { "(и)" Ма- ри де- вой- ко~й, "(и)" друж- ки та ви- кат "(и)" на-
" вън" да из- ля- зеш }
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
  opus = "ТД-140,2,4"
  tagline = ##f
}


