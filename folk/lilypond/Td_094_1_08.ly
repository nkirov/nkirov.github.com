%{
td_094_1_08
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 8 = 120
\cadenzaOn
\phrasingSlurDown
g16 a8.\noBeam( \afterGrace b8[\( { a16[ g]\) } a16 g]) a16[( b8.]
\varA
\grace { c16\startTextSpan[\( b] } a8[\) b16 a\stopTextSpan]) 
\parS
a8-\parenthesize\prall[( g]) 
\afterGrace a8(\( { b16[ a g fis]\) } g16-\parenthesize\prall[ fis!] 
\grace { g16[\( fis!] } e8^\rtoe\))
\bar ""
e2( d8) r \bar "" 
\break
g16[( a]) \bar ""
\varB
\afterGrace b8\startTextSpan(\( { a16[ g]\) } a8^\rtoe\noBeam 
\afterGrace b8)\( { a16[ g]\) } \bar "" a16.[( g32]
\grace { \stdB g8\( \stdE } \afterGrace a\)\( { g16[ fis!\stopTextSpan]\) } 
%%
\grace { g16[\( a g fis!] }
\varC
e2\startTextSpan\)) e8 e4.\stopTextSpan-\parenthesize\fermata
 \bar "|." 
s4 \fixB cis \fixC
 \bar "|." 
\break
%% s16 \clef treble
\varA
\grace { c'16\startTextSpan[\( b] } a8[\) b\stopTextSpan] \bar "||"
\varB
\afterGrace b8\startTextSpan(\( { a16[ g]\) } a4 
\afterGrace b8\([ { a16[ g]\) } \afterGrace a8])\( { \stdB g\) \stdE }
\grace { \stdB g8\( \stdE } \afterGrace a4\)\( { g16[ fis!\stopTextSpan]\) } \bar "||"
\varC
e4.\startTextSpan e8 e2\stopTextSpan
 \bar "|."  
}
\addlyrics { Бо- ян- ка, кла- ла~й Бо- ян- ка си- дян- ка }
%%си- дян- ка, ду де си- дян- ка на- кла- де }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 120 8)
		}
	}
}
%
\header{
  opus = "ТД-94,1,8"
  tagline = ##f
}


