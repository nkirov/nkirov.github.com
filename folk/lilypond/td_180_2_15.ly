%{
td_180_2_15
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 8 = 176
%%\cadenzaOn
\time 7/16
\varA
g8\startTextSpan g\noBeam a8.\stopTextSpan | 
\acciaccatura a8 bes a\noBeam(~ a16.[ g]) |
a8\noBeam a16[( g]) g16.[( f]) | f8 g\noBeam a8. |
\acciaccatura a8 bes a\noBeam(~ a16.[ g]) | 
\acciaccatura g8 a a16[( g]) g16.[( f]) | f8\noBeam g16[( a]) g16.[(\prall f]) |
f16[( ees]) d8\noBeam~ d r16 | \acciaccatura g8 a a16[( g]) g16.\prall[( f]) |
f8 g16[( a]) g16.[(\prall f]) | f16[( ees]) d8\noBeam~ d8. |
d8 d\noBeam d r16
 \bar "|." 
s8. \fixB b4 \fixC
  \bar "|." 
\set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 7 16)  
 \clef treble  
 \varA
f'8\startTextSpan g\noBeam a8.\stopTextSpan 
 \bar "|." 
}
\addlyrics { Таз ве- чер ни съм ве- се- ла, таз ве- чер ни съм ве- се- ла,
че ми го ня- ма лю- бе- то, че ми го ня- ма лю- бе- то }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 176 8)
		}
	}
}
%
\header{
  opus = "ТД-180,2,15"
  tagline = ##f
}


