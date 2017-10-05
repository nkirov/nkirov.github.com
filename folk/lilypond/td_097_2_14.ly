%{
td_097_2_14
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 88
\cadenzaOn
\parS
g2.(~ g8[ a]) \acciaccatura a8 b4-\parenthesize^\rtoe 
\acciaccatura g8 a2.( \grace { b16[\( a g a] }
g4\)) g16[( a8.^\rtoe]) g2( \times 2/3 { a16[ g f } e f]) f8 e\noBeam~ e2. r4
\bar ""
g8([ a]~ a2 \grace { b16\([ a g a] } g4\)) \afterGrace g4(\( { a16[ g]\) } 
\times 2/3 { f16[ g f } e f]) g16[( a \grace { g16[\( a g fis] } g8]\)~ g1\fermata)
\override Glissando #'style = #'zigzag
r4 \noteFi \hideNotes e64\glissando \unHideNotes  g2.~( g8[ a)]
\bar ""
a16[( s^\rtoe b8.]) \acciaccatura g8 a2.( \grace { b16[\( a g a] } g4\)) \acciaccatura g8 a
g\noBeam~( \afterGrace g4^\rtoe\( { a16[ g]\) } \grace { f16[\( g f e] } f4\)) f8 
e\noBeam~ e2. r4
\bar ""
g8[( a16 g] \grace { f16[\( g f e] } f2.\) \grace { g16[\( f e f] } g4^\ltoe\)) 
g8[( a16 g] \grace { f16[\( g f e] } f4\) e4) e1\fermata
 \bar "|." 
s4 \fixB d
  \bar "|." 
}  
\addlyrics { Сно- щи си ми- нах, ма- мо, за- ми- нах " " край Со- лун- ски- те,
ма- мо, ли- ва- ди }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 88 4)
		}
	}
}
%
\header{
  opus = "ТД-97,2,14"
  tagline = ##f
}


