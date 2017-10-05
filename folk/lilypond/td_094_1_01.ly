%{
td_094_1_01
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 66
%\time 2/4
\cadenzaOn
\phrasingSlurDown
\acciaccatura c8 d4( \afterGrace e8[\( { d16[ c]\) } d16\prall c]) d[(\prall c])
d8(~ \afterGrace d[\( { \stdB c\) \stdE } \afterGrace d]\( { c16[ b]\) } 
\afterGrace c8[\( { \stdB b\) \stdE } a]~ a4.) r8 b16\noBeam 
\varA
s8\startTextSpan c8.\stopTextSpan
\bar "" \break
\parS
d8[( c16-\parenthesize\prall b]) 
\acciaccatura c8 d\noBeam \afterGrace c(\( { \stdB b\) \stdE } a16[ b a8]) 
a16 a8.\noBeam a2\fermata
 \bar "|." 
s4 \fixB cis, \fixC
 \bar "|." 
s32  \clef treble
 \varA
\acciaccatura c'8\startTextSpan d8.\stopTextSpan
 \bar "|."  
}
\addlyrics { Ма- ро льо, ска- ра са Ма- ра сви- кър- ва }
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
  opus = "ТД-94,1,1"
  tagline = ##f
}


