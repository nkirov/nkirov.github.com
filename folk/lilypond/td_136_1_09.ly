%{
td_136_1_09
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 8 = 176
\cadenzaOn
a8 a4 a b8 \afterGrace a2.\fermata(\( { g8\) } a \times 2/3 { b16[ a g] }
a8 \times 2/3 { b16[ a g] } f8) r g16[( a]) a[( bes] a[ g])
\bar ""
g8.\noBeam( f16[ e]) \bar "" f[( s^\ltoe e]) \bar "" d1\fermata( c8) r \bar "" 
a'16([ bes!]) a8([ g]) g\prall[( f]) f16[( s^\ltoe g])
\bar ""
g8^\rtoe(~ g2.\fermata a2 g16[ a] bes![ a g] f16\noBeam) r^\rtoe a8 g[( e16]) f[( e]) 
d8\noBeam^\ltoe d^\rtoe~ d2.\fermata
 \bar "|." 
s4 \fixB e,
 \bar "|."  
}
\addlyrics { Я по- ча- кай- те да по- слу- ша- ми, та- тък на- до- лу глас 
ми се чу- ва }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 176 8)
		}
	}
}
%
\header{
  opus = "ТД-136,1,9"
  tagline = ##f
}


