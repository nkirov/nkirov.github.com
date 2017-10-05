%{
td_093_2_05
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 60
\time 7/16
%%\cadenzaOn
e8 f\noBeam g16([ a8]) | a8 g\noBeam a16[( g8]) | 
a8\noBeam f32[( g f16] \grace { e16\([ f] } e8.\)) |
e8 f\noBeam g16([ a8]) | a16[( g]) a8\noBeam f8. |
g8\noBeam g32[( f e f] e8.) |
f8\noBeam g16[( f]) g8. | g8\noBeam f e8.\noBeam | e8 e\noBeam~ e8.\fermata
 \bar "|."
s8  \fixB cis4
 \bar "|."  
}
\addlyrics { Ве- лич- ка на бал- кон си- де,  Ве- лич- ка на бал- кон си- де,
бя- ла тан- тел- ка пле- те- ше }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 60 4)
		}
	}
}
%
\header{
  opus = "ТД-93,2,5"
  tagline = ##f
}


