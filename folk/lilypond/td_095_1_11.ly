%{
td_095_1_11
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 80
\cadenzaOn
\phrasingSlurDown
\acciaccatura c8 \afterGrace d2\( { ees16[ d ees]\) } 
\afterGrace d4\( { ees!16[ d c]\) } c8[( d] \times 2/3 { c16\prall[ b c } d8])
d4( ees!32[ d ees16]) c16[( d]) d8\noBeam( \grace { c16\([ d c b] } c4\) d8\noBeam)
\bar ""
\acciaccatura { d16[ ees! d c] } d8[( c]) \bar "" bes8\noBeam( \grace { a16[\( bes! a g] } a4\)) r8 \bar ""
\afterGrace d8\noBeam(\( { ees!16[ d c]\) } \times 2/3 { d16[ c d)] } d[( c d8]) \bar ""
c8\noBeam( \grace { bes!16[\( c bes a] } \afterGrace bes4\)\( { a16[ g]\) } a8\noBeam)
\bar ""
\afterGrace bes!8[(\( { c16[ bes]\) } c16]) \bar "" a\noBeam \afterGrace bes!8[(\( { \stdB c\) \stdE } 
bes16 a g]~ g2)
g16 g8.\noBeam~ g1\fermata
 \bar "|." 
s4 \fixB d^"↑"
 \bar "|."  
}
\addlyrics { Све- кър си Стой- не го- во- ри: Сна- хо льо, Стой- не ху- ба- ва }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 80 4)
		}
	}
}
%
\header{
  opus = "ТД-95,1,11"
  tagline = ##f
}


