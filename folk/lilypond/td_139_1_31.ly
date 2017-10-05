%{
td_139_1_31
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 66
\cadenzaOn
\phrasingSlurDown
\override Glissando #'style = #'zigzag
g4 \acciaccatura g8 a1 a2 
\noteFi \afterGrace c8[(\mordent\glissando { \stdB d \stdE } \noteFi c16\glissando b] \grace { c16[\( d c b] } a4\))
a1 \breathe g8[( f]) g2~( g8[ aes32^"↑" g f g] \grace { aes!16[\( g] } f4\))
\bar ""
\acciaccatura g8 a1 r4 g \afterGrace a2.\( { \stdB g8\) \stdE } 
\acciaccatura a8 b2( c32[ b a b] \grace { c16[\( b a] } g8^\rtoe\)) a4 \bar ""
a8( \grace { g16[\( a g fis] } g4.\)
\bar ""
a32[ g fis! g] a16[ g fis!8]) \bar "" fis!\noBeam e~ \afterGrace e2\( { \stdB d8\) \stdE } d4 r \bar ""
b'16 a\noBeam a8\mordent(~ a2 g4)
\bar ""
\acciaccatura a8 b2( c32[ b a b] \grace { c16[\( b a] } g8\)) \afterGrace a4^\ltoe\( { \stdB g8\) \stdE }
\acciaccatura { a16[ g fis!] } \afterGrace g2(\( { a16[ g fis!]\) } g8.[\glissando fis!16])
fis!\noBeam e8. e1
 \bar "|." 
s4 \fixB f
 \bar "|."  
}
\addlyrics { Йел- ке мо- ма- ре дой- да- ха на Йел- ки- ни- те дво- ро- ве,
и- зъ- ля- ла Йел- ки- на май- ка }
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
  opus = "ТД-139,1,31"
  tagline = ##f
}


