%{
TD_094_2_15
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 63
% \time 2/4
\cadenzaOn
\phrasingSlurDown
\acciaccatura d8 e4 e8\prall[( d16 e]) \acciaccatura { d16[ e d] } c4 d8
\acciaccatura d8 e4.( \grace { f16[\( e] } d8\)[ \grace { e16[\( d] } c8]\))
d16 \acciaccatura d8 \afterGrace e8.^\rtoe(\( { \stdB d8\) \stdE } \grace { e16[\( d] } c8\)[ d16 e])
\acciaccatura d8 c2~ c8 r
\bar ""
\acciaccatura { c16[ d] } e4 \acciaccatura { e16[ f e] } d8[( e16 d]) 
\acciaccatura { d16[ e d] } c4 d16 \acciaccatura d8 e[( d16]~ 
d8[ \grace { e16[\( d] } c8\)])
\acciaccatura c8 \afterGrace d[(\( { c16[ b]\) } \grace { c16[\( d c] } b8^\rtoe]\))
a16 a8.\noBeam~ a4
 \bar "|." 
s4 \fixB bes,
 \bar "|."  
}
\addlyrics { Ра- но ми ра- ни млад Сто- ян, ра- но ми ра- ни да до- и }
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
		\Score
		tempoWholesPerMinute = #(ly:make-moment 63 4)
		}
	}
}
%
\header{
  opus = "ТД-94,2,15"
  tagline = ##f
}


