%{
td_097_2_22
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c'' {
%\tempo 4 = 108
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
  \rhythmMarkA \rhyMarkCdot #"108-112"
\cadenzaOn
\phrasingSlurDown
g2 b8([ c]) c([ d]~ d1~ d8[ c16 b] c8[ b\prall]) 
a8([ b] \grace { a16[\( b a gis] } a1)\) r4 r \acciaccatura c8 d4
\bar ""
\times 2/3 { d16[( e d] } c[ b] \afterGrace  c2.\( { d16[ c b]\) } c[ b a8])
\acciaccatura a8 b2.( \grace { c16[\( b] } a4\) \grace { b16[\( a g a] } g4\))
g1 r4 
\bar "|:"
g8([ a]) b^\rtoe[( c^\ltoe]) 
\bar ""
c[( d] \grace { c16\([ d c b] } c8\)[ b\prall])
a8([ b] \grace { a16\([ b a g] } a1\) \grace { b16\([ a g a] } g4\)) r b c8([ b])
\bar ""
a8([ b] a32[ b a g] a16[ g]) g1
 \bar ":|" 
s4 \fixB fis
 \bar "|."  
}
\addlyrics { Из- гу- би- ла Ан- ге- ли- на ал- тън гер- дан, сър- мен ко- лан }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 108 4)
		}
	}
}
%
\header{
  opus = "ТД-97,2,18"
  tagline = ##f
}


