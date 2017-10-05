%{
sva_138_2_23
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 92
%%\time 2/4
\cadenzaOn
\override Glissando #'style = #'zigzag
\acciaccatura b8^"I" c2^\rtoe \acciaccatura c8 d4 c8.([ b16]) a2. a2 r4 
c4( d16[ c b8]) a8.([ b16] c16[ b a8])
\afterGrace a2.(\( { g16[ a\)] } b16[ a g8]~ g2.) r4 \acciaccatura a8 bes!4( c16[ bes a8]) 
\bar ""
\acciaccatura bes!8 c4\glissando bes16[( a8.]) 
a2\glissando g4. r4 \bar ""
\acciaccatura a8 bes!4( c16[ bes a8]) \acciaccatura g8 a2 a1~ a2.
\bar "||"
\acciaccatura bes8^"II" c2^\rtoe \acciaccatura c8 d4\glissando c32[( d c b] c[ d c b]) a2 
a4. r8 
\acciaccatura b8 c4( d16[ c b8]) a8.([ c16] bes4)
a2( bes!32[ a g a] bes[ a g16~] g2.) r4 r 
\bar "" 
\acciaccatura a8 bes!4( c16[ bes a8]) \acciaccatura bes!8 c4
bes! \acciaccatura bes8 a2. g4 r4 \acciaccatura a8 bes!4( c16[ bes a g]) g8([ a]~ a4) a1~ a2.
 \bar "|." 
s4 \fixB a \fixC
  \bar "|."  
}
\addlyrics { Ма- ма Сто- я- на за- гла- ви ко- га го ма- ма гла- ве- ше, 
ко- га го ма- ма гла- ве- ше, не- му си пръ- стен ле- йе- ше }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 92 4)
		}
	}
}
%
\header{
  opus = "ТД-138,2,23"
  tagline = ##f
}


