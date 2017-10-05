%{
sva_094_2_06
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 80
\cadenzaOn
\varA
\acciaccatura g8\startTextSpan a[( b\stopTextSpan)] 
\acciaccatura { c16[ b] } c4 b8\prall([ a16 b]) a4(~ a16[ b]
\times 2/3 { c16[ b a]) } c8\noBeam b \acciaccatura b a\noBeam g\noBeam a8.([ b16])
 \bar ""
\acciaccatura { c16[ b] } c4 
 \bar ""
 \times 2/3 { b16[( c b] } a[ b])
a4( \afterGrace b8\( { \stdB a\) \stdE } g4.) \breathe c8\noBeam b a16[( g]) a([ b)] a2\fermata 
 \bar "|." 
 s4 \fixB fis \fixC
 \bar "|."  
 s32  \clef treble
\varA
a8.\startTextSpan[( b16\stopTextSpan)]
 \bar "|." 
}
\addlyrics { Стой, де- ве- ро, не бий вра- та, стой, де- ве- ро, не бий вра- та, ко }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 90 4)
		}
	}
}
%
\header{
  opus = "ТД-94,2,6"
  tagline = ##f
}


