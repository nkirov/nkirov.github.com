%{
td_095_2_04
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 116
\cadenzaOn
\phrasingSlurDown
g8([ a]) a([ b]~ b2 \grace { a16[\( b a g] } a4\)) 
g8[( a] \grace { g16[\( a g fis] } g1\)\fermata) r4 \iii d8 g16[( a]) 
a8\noBeam( b2 \grace { a16[\( b a g] } a4\))
\bar ""
g8[( \grace { fis!16[\( g fis e] } fis8\)]) \bar ""
\acciaccatura g8 a g\noBeam~ g1 r4
\acciaccatura g8 a\noBeam a16[( b]~ b4 \grace { a16[\( b a g] } a4\)) \bar ""
g8[( \grace { fis!16[\( g fis e] } fis8\)]) 
\bar ""
\varA
\acciaccatura g8\startTextSpan a16\noBeam \afterGrace g8^\rtoe([\( { a16[ g fis!]\) } g32 a\stopTextSpan]) \bar ""
fis!16\noBeam e e8\noBeam~ e2. r4 \bar "" \acciaccatura g8 a\noBeam \bar ""
\acciaccatura a8 g4( \grace { a16[\( g fis!] } g\)[ a])
\bar ""
\acciaccatura fis!8 \afterGrace e2\( { fis!8\) } 
\varB
a8\startTextSpan\noBeam \afterGrace g16^\rtoe([\( { a[ g fis!\)] } g32 a\stopTextSpan]) 
fis!16\noBeam e e8\noBeam~ e2
 \bar "|." 
  s16 \clef treble
\varA
\acciaccatura g8\startTextSpan a\noBeam \afterGrace g([\( { a16[ g fis!]\) } g32 a\stopTextSpan]) \bar "||"  
\varB
a8\startTextSpan\noBeam \acciaccatura { a16[ g fis!] } g16[( a\stopTextSpan]) 
 \bar "|."   

}
\addlyrics { Ма- ри Ма- ъ ри- йо ху- ба- ва, що бя- ло пи- реш, Ма- ри- йо, 
а чер- но но- сиш, джа- нъ- мо }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 116 4)
		}
	}
}
%
\header{
  opus = "ТД-95,2,4"
  tagline = ##f
}


