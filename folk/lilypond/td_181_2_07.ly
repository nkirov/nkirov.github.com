%{
sva_181_2_07
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 8 = 250
\time 5/16
%%\cadenzaOn
\varAB
c8\startTextSpan\noBeam d16.[( e\stopTextSpan]) | 
f8\noBeam f16.([ e]) | f8\noBeam f16.([ e]) | d8\noBeam d8. | c8\noBeam d8. | 
\varC
c8\startTextSpan\noBeam d8.\stopTextSpan | 
\varD
d8\startTextSpan~(\noBeam d16.[ c\stopTextSpan]) | 
\varE
d16\startTextSpan[( f] e16.[ d\stopTextSpan]) | 
c8\noBeam d8. | c8\noBeam d8. | d8~\noBeam d8. | d8 r8.
 \bar "|." 
s16 \fixB e4 \fixC
  \bar "|."
\set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 5 16)  
 \clef treble
\varA
c8\startTextSpan\noBeam d16.\noBeam e\stopTextSpan \bar "||"
\varB
c16\startTextSpan\noBeam c d16.[( e\stopTextSpan]) \bar "||"
\varC
c8\startTextSpan\noBeam d16.\noBeam d\stopTextSpan \bar "||"
\varD
d16\startTextSpan[( e] d16.[ c\stopTextSpan]) \bar "||"
\varE
e16\startTextSpan[\( f] \acciaccatura g8 f16[ e d\stopTextSpan]\) 
  \bar "|." 
}
\addlyrics { Во- да ти- че, во- да ти- че по бе- ли ка- мъ- ни, по бе- ли ка- мъ- ни }
%
\layout {
%%   \context { 
%%	    \Staff \remove "Time_signature_engraver" } 
  indent = #0
  line-width = 190\mm
  ragged-right=##f
}
%
\midi { 
	\context {
		\Score tempoWholesPerMinute = #(ly:make-moment 250 8)
		}
	}
}
%
\header{
  opus = "ТД-181,2,7"
  tagline = ##f
}


