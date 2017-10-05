%{
td_094_1_04
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 8 = 120
%\time 2/4
\cadenzaOn
\phrasingSlurDown
b8 c\noBeam c16[( b]) 
\varA
c\startTextSpan[( b] \grace { c[\( b] } a8.\)[ b16\stopTextSpan])
\parS
b32-\parenthesize\prall[( a g a g8]) \breathe a16[( b]) c8
\bar ""
c16\prall[( b a b]~ b4 \afterGrace c4\( { d16[ c b]\) } c[ b b8\mordent]
b16\prall[ a g8]~ g4.) r8 \bar "" 
b c\noBeam c16[( b])
\bar ""
\varB
\afterGrace c8\startTextSpan(\( { b16[ a b]\) } c[ b8\stopTextSpan]) 
r16 \afterGrace c8[(\( { d16[ c b]\) } a8\prall]) a8 a\noBeam a2 
 \bar "|." 
s4 \fixB e \fixC
  \bar "|." 
 s16 \clef treble
 \varA
 \acciaccatura { c'16\startTextSpan[( b] } a8[ b\stopTextSpan]) \bar "||"
\varB
\afterGrace c8\startTextSpan(\( { d16[ c b a b]\) } c[ b8\stopTextSpan]) 
  \bar "|."  
}
\addlyrics { Вис- ден и Ра- да ко- па- ла, вис- ден "с май-" ка си гъл- ча- ла }
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
  opus = "ТД-94,1,4"
  tagline = ##f
}


