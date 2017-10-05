%{
td_094_2_24
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 66
\cadenzaOn
\phrasingSlurDown
g16 g\noBeam \acciaccatura g8 \afterGrace a4.\( { g32[ a b a]\) } 
\acciaccatura a8 \afterGrace g[(\( { \stdB f8\) \stdE } g16 f]) e4 
\varA
\acciaccatura g8\startTextSpan a( \grace { g16[\( a] } b8.\)[ a16\stopTextSpan]) 
\times 2/3 { a16[( g f] } g\prall[ f]) e2 r4
\bar ""
g8\noBeam a16[( b]) \bar "" \times 2/3 { b16[( a g] } a4. g32[ a b a]) b16\noBeam 
a32[( g]) g8\noBeam( \times 2/3 { a16[ g f] } g16.[ f32]) e8 e\noBeam~ e4\fermata
 \bar "|." 
s4 \fixB b \fixC
 \bar "|." 
s16 \clef treble
\varA
\acciaccatura g'8\startTextSpan a4.( g32[ a b a\stopTextSpan]) 
 \bar "|." 
}
\addlyrics { За- ле- жа Сто- ян, за- бо- ля, йот вър- ла бо- лис, биз- цяр- на }
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
  opus = "ТД-94,2,24"
  tagline = ##f
}


