%{
td_094_1_03
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 8 = 116
%\time 2/4
\cadenzaOn
\phrasingSlurDown
a16[( b]) c8( b16[ \grace { c[\( b] } a\) c b])
c16[( b] \grace { c[\( b] } a[\) b] \grace { b16[\( a] } g4\))
\varA
s8 \startTextSpan a8\stopTextSpan 
\parS
c\noBeam( \afterGrace b\( { c16[ b a]\) } b32-\parenthesize\prall[ a 
\afterGrace g8]\( { a16[ b]\) }
a8[ b] \afterGrace a\( { b16[ a]\) } g8\prall\noBeam~ g4) r
\bar ""
a16[( b])  c8( b16[ \grace { c[\( b] } a\) c b]) c16[( b] 
\grace { \stdB a8\( \stdE } \afterGrace b)\)\( { \stdB a\) \stdE } g4 g8 g\noBeam~ g2  
 \bar "|." 
s4 \fixB d \fixC
 \bar "|."  
 s16 \clef treble 
\varA
a'16\startTextSpan[( b\stopTextSpan])
 \bar "|."   
}
\addlyrics { Да зна- йеш, ма- мо, йем да вя- ру- ваш }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 116 8)
		}
	}
}
%
\header{
  opus = "ТД-94,1,3"
  tagline = ##f
}


