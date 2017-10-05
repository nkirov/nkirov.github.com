%{
td_113_1_15
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 8 = 192
\cadenzaOn
\phrasingSlurDown
g16[( a]) a8( b1) b16\noBeam b8.~ b4 b16[( c b\prall a] b8\prall[ a])
a16[( b a\prall g] a8\prall[ g]) r8. \stemUp \ii b16\noBeam \stemNeutral
\bar ""
b16[( a]) a8\noBeam~ a2 \acciaccatura a8 b\noBeam b\noBeam~( b[ \grace { c16\([ b] } a8])\)
a16[( b] a32[ b a g] a8[ b32 a g fis]) g4.\mordent( \grace { a16[\( g] } fis!8\) 
\grace { e16[\( fis!] } d8\)) r
\bar ""
d8\noBeam e~ \afterGrace e4^\rtoe\( { d8\) } \acciaccatura g8 a a\noBeam(~ a4 b16[ a^\ltoe g8])
a8([ b]~ b[ a16\prall g] a8\prall[ g16 fis!]) g4\mordent(~ g8.[ fis!16] 
\grace { e16[\( fis!] } d8\noBeam\)) r8
\bar ""
a'16[( b]) a8\noBeam(~ \afterGrace a[\( { b16[ a]\) } g\mordent]) g16[( fis!]) e8\noBeam e2.
e2(~ e16[ d]) r8 \acciaccatura g8 a a\noBeam~ \afterGrace a2\( { g8\) } a16[( b]) 
b8\noBeam(~ b[ \grace { c16[\( b] } a8\)])
\bar ""
a16[( b a\prall g] a8\prall[ g]) g16[( a g8\prall] g8.[ fis!16] \grace { e16[\( fis!] } d8\noBeam\)) r16
g\noBeam a[( b]) a8\noBeam(~ \afterGrace a[\( { g8\) } a32 b16.])
\bar ""
g16[( fis!]) e8^\ltoe\noBeam e2. e1
 \bar "|." 
s4 \fixB ees
 \bar "|."  
}
\addlyrics { Ган- ка по двор хо- ди, и дреб- но съл- зи ро- ни. 
Ла- льо Ган- ки ду- ма: 
Га- нян- це, пи- лян- це, що по дво- ри хо- диш и дреб- но съл- зи ро- ниш }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 192 8)
		}
	}
}
%
\header{
  opus = "ТД-113,1,15"
  tagline = ##f
}


