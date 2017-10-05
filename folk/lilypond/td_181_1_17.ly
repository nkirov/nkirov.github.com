%{
td_181_1_17
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 8 = 184
%\cadenzaOn
\time 7/16
\varA
\parS
f8\startTextSpan g\noBeam g-\parenthesize\prall[( f16\stopTextSpan]) | 
f8( g\noBeam \grace { a16[\( g] } f8.\noBeam\)) |
f8 \acciaccatura f g\noBeam f16.\prall[( ees]) | d8~ d\noBeam ~ d8. |
f8 g\noBeam f16.\prall[( ees]) | d8~ d\noBeam ~ d8. | 
\varB
\acciaccatura d8\startTextSpan f ees16[( d]) c8.\stopTextSpan | 
d8~ d\noBeam r8.
 \bar "|." 
 s8. \fixB  d4 \fixC
  \bar "|." 
\set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 7 16)  
 \clef treble
\varA
d8\startTextSpan\noBeam \acciaccatura f g\noBeam g16.\prall[( f\stopTextSpan]) \bar "||"
\varB
\acciaccatura d8\startTextSpan ees ees16[( d]) c16[( b c\stopTextSpan]) 
 \bar "|."   
}
\addlyrics { Си- ден- ки- те на пръс- ка- не, на пръс- ка- не, на раз- дя- ла }
%
\layout {
%   \context { 
%	    \Staff \remove "Time_signature_engraver" } 
  indent = #0
  line-width = 190\mm
  ragged-right=##f
}
%
\midi { 
	\context {
		\Score tempoWholesPerMinute = #(ly:make-moment 184 8)
		}
	}
}
%
\header{
  opus = "ТД-181,1,17"
  tagline = ##f
}


