%{
td_138_2_15b
%}

\include "td-preamble.ly"

\score {
\relative c' {
%%\tempo 4 = 126
\cadenzaOn
\phrasingSlurDown
\varA
b'1\startTextSpan~ b4 \acciaccatura c8 d4 \acciaccatura { c16[ d c b] } c2.(
d16[ c b c] d[ c b8]) r4 b8\prall[( s^\rtoe a]) 
\acciaccatura a8 b2(~ b16[ a g a] b[ a g8]) g1~ g4 r r\stopTextSpan \bar "||"
\varB
g8\startTextSpan[( a\stopTextSpan]) \bar "||"
\varC
f!4\startTextSpan a g8[( a g^\ltoe f!\stopTextSpan]) \bar "||"
\varD
a4\startTextSpan g8[( f!^"↑"]) \times 2/3 { g16[( a g } f8\stopTextSpan^"↑"]) 
\bar "||"
\varE
\acciaccatura g8\startTextSpan a[( g]) f!8[( e\stopTextSpan)] \bar "||"
\varF
g4.\startTextSpan a8\stopTextSpan \bar "||"
\varG
b4\startTextSpan \afterGrace a(\( { b16[ a]\) } g4 c16[ b f!8^"↑"]) f!8^"↑"\noBeam e8~ 
e4 e1~ e4 r4\stopTextSpan \bar "||"
\varH
\acciaccatura a8\startTextSpan b4 \afterGrace a(\( { b16[ a]\) } g4. fis!8) fis!8\noBeam e8~ 
e4 e1~ e4 r4\stopTextSpan \bar "||"
\varI
g4\startTextSpan^\rtoe a \acciaccatura a8 b1( c16[ b a8]) 
\acciaccatura a8 b4 
\afterGrace a4(\( { b16[ a]\) } g2 a32[ g fis16]) r8 
fis!8 e~ e4 e1~ e2\stopTextSpan \bar "||"
\varJ
g4.\startTextSpan a8 b1( c16[ b a8]) \acciaccatura a8 b4 
\afterGrace a4(\( { b16[ a]\) } g4. fis!8^"↓") 
fis!8^"↓"\noBeam e~ e4 e1~ e2\stopTextSpan
\bar "|."
}
\addlyrics { " " }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 126 4)
		}
	}
}
%
\header{
%%  opus = "ТД-138,2,15"
  tagline = ##f
}


