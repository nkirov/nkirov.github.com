%{
td_141_1_12
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%\tempo 4 = 144
\cadenzaOn
\phrasingSlurDown
g4 \acciaccatura b8 c2.( d8[ c16\prall b] c8[ \grace { d16[\( c] } b]\)
c8[ \grace { d16[\( c] } b]\)) b16[( c]) \afterGrace b8(\( { c16[ b]\) } a2.)
b2( c32[ b a b c8] \afterGrace b4\( { a16[ b]\) } \grace { c16[\( b] } a4\))
\bar ""
a8\prall[( g]~ g2) r4 g^\ltoe g16[( a]) a8(~ a4. b32[ a g a] \grace { b16[\( a] } g2\))
\acciaccatura { g16[ a] } b2(~ \times 2/3 { b16[ a g] } a\prall[ g])
g8 g\noBeam~( g4 \grace { a16\([ g] } f4\)) r
\bar ""
g4 g16[( a]) a8(~ a4. \grace{ b16[\( a] } g8\)) 
\acciaccatura { g16[ a] } \afterGrace b4^\rtoe(\( { a16[ b a g]\) } a[ b a g]) g8 g\noBeam~ g2.
 \bar "|." 
s4 \fixB cis,
 \bar "|."  
}
\addlyrics { Слън- це, яс- но слън- це, ко- му ма- ма ре- че яс- но да не гре- йеш }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 144 4)
		}
	}
}
%
\header{
  opus = "ТД-141,1,12"
  tagline = ##f
}


