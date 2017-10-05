%{
sva_181_1_05
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 108
\time 4/4
%\cadenzaOn
f4.( g8) a[( g]) g[( f16 e]) | 
\varA
f4\startTextSpan(~ f16[ g f e)] d4.( c8\stopTextSpan) |
d4 e f16([ g f8]~ f4 | f~ f16[ g f e] \times 2/3 { d8[ e d] } c4~ | c2.) r4 |
\break
f4.( g8) a[( g]) g([ f16 e]) |
\parS
f4.( e8-\parenthesize^"↓") d4.( e8) |
f([ g]) e\prall([ d]) d2~ | d2. r4
 \bar "|." 
 s2. \fixB c4 \fixC
  \bar "|."
\set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 4 4)  
 \clef treble  
\varA
f4.\startTextSpan( e8) d4.( c8\stopTextSpan)   
  \bar "|." 
}
\addlyrics { Про- ща- вай, май- ко, про- ща- вай, до- се- га бях- ме за- ед- но }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 108 4)
		}
	}
}
%
\header{
  opus = "ТД-181,1,5"
  tagline = ##f
}


