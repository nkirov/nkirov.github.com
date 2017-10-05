%{
td_138_1_30
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 116
\cadenzaOn
\phrasingSlurDown
\acciaccatura b8 c4 \acciaccatura { a16[ b] } a2. \afterGrace a2.\( { \stdB b8\) \stdE }
\acciaccatura b8 c4 \acciaccatura { c16[ b] } a2( b16[ a g] a[ b a g]) g4
a2~ a4 r
\acciaccatura b8 c4 \acciaccatura { c16[ b] } a2. a4( b16[ a g] a[ b a])
\bar ""
g16[( a g f]) \bar "" f1\mordent~ f4 r r f \acciaccatura g8 a2.
\varA
a4\startTextSpan( b16^"↓"[ a g8] a16[ b^"↓" a g\stopTextSpan]) 
g8 \acciaccatura { g16[ a g] } f4. f4 g r g^\ltoe 
\varB
s\startTextSpan f\stopTextSpan
\bar ""
\acciaccatura { f16[ e] } d4 \bar "" d \bar "" d1~ d4 r f 
\acciaccatura g8 a2. \bar ""
\varC
a4\startTextSpan( b16^"↓"[ a g8] a16[ b^"↓" a g]) g8 
g16[( a] g[ a g f]) f4 g\stopTextSpan
r
\bar ""
g8 \bar ""
\varD
\acciaccatura { a16\startTextSpan[ g f e] } f4.\stopTextSpan \bar ""
\acciaccatura { f16[ e d] } e4 d d1~ d2
 \bar "|." 
s4 \fixB a \fixC
 \bar "|." 
 s16 \clef treble
\varA
 \afterGrace a'2\startTextSpan\( { b16[ a g\stopTextSpan]\) } \bar "||"
\varB
g8\startTextSpan\prall[( f\stopTextSpan]) \bar "||"
\varC
\afterGrace a4\startTextSpan(\( { b16[ a g]\) } 
a16[ b a g]) g8[( a]) g\prall[( f]) 
f8 g4.\stopTextSpan \bar "||"
\varD
s16\startTextSpan f4.\stopTextSpan 
 \bar "|."  
}
\addlyrics { Ой, вак- ла, вак- ла джа- нъм, вак- ла То- до- ро, що нъ- ще
не спиш, вак- ла, пък де- не дре- миш, ов- чар ли лю- биш, вак- ла,
та нъ- ще не спиш? }
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
  opus = "ТД-138,1,30"
  tagline = ##f
}


