%{
td_138_1_27
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 92
\cadenzaOn
\override Glissando #'style = #'zigzag
\phrasingSlurDown
a4 a8[( b]~ \afterGrace b1\( { \stdB c8\) \stdE } d8[ c16\prall b] c4. \grace { d16[\( c] } b8\)) \bar ""
b[(\prall a]) \bar "" 
a8( b4 \grace { c16\([ b] } a\)[ g] a8[ \grace { b16[\( a] } g8\)]
g2~ g8[ a] b4. \grace { c16[\( b] } a8\))
\bar ""
a16[( b a\prall g] a8[ \grace { b16[\( a] } g8]\)) \bar "" g1 r4 r \bar ""
\acciaccatura g8 a4 \acciaccatura a8 \bar ""
b2.( c16[ b a b] c4 d16[ c b8]) b16[( c b a])
\bar ""
a16[( b a g]~ g4) \bar "" g8[( a16 g] f4) e1 r4 r \bar ""
a4 a1( b16[ a g a] b4. \grace { c16[\( b] } a8\))  \breathe \bar ""
a8[( b]) \bar "" g4.( \grace { f16[\( e] } f8\))
\bar ""
a8 g\noBeam~ g2. r4 \bar "" e8[( f]) \bar "" \acciaccatura g8 a2( b16[ a g8]) \bar ""
a g\noBeam~ \noteFi g4\glissando e8\noBeam e~ e1
\bar ""
a4 a2.( b16[ a g a] g2 \grace { c16[\( b] } a8\)) r \bar "" a[( b]) \bar ""
g4.( \grace { f16[\( e] } f8\)) a4 g2. r4 \bar ""
e8[( f]) \acciaccatura g8 \bar "" a2( b16[ a g8])
\bar ""
a8 g\noBeam~( g[ f\mordent]) f8 f\noBeam~ f1 r4 \bar "" a
a2.( b16[ a g a] b2 \grace { c16[\( b] } a8\)) r \bar "" a[( b])
g4.( \grace { f16[\( e] } f8\))
\bar ""
a8 g\noBeam~ g2. r4 e8[( f]) \acciaccatura g8 a2( b16[ a g8]) a 
g(\noBeam~ g[ \grace { a16[\( g] } f8\)]) e8 e\noBeam~ e1
 \bar "|." 
s4 \fixB c
  \bar "|." 
}
\addlyrics { Ма- ма Ел- ка пле- те, пле- те, лю- то къл- не: Ел- ко льо, дъ- ще- рьо,
ти да са о- же- ниш ко- га чу- иш, Ел- ко, ри- ба да про- ду- ма, ри- ба да про- ду- ма
от тих бял Ду- на- ва }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 92 4)
		}
	}
}
%
\header{
  opus = "ТД-138,1,27"
  tagline = ##f
}


