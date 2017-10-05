%{
td_134_2_13
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 69
\cadenzaOn
\phrasingSlurDown
\iii g8\noBeam 
\parS
\afterGrace b8^>(\( { a16-\parenthesize^"↑"[ g]\) } 
\grace { a16[\( b a] } g4.-\parenthesize^"↑"\)) g4-\parenthesize^"↑"^\rtoe 
aes-\parenthesize^"↑"^\rtoe
\acciaccatura b8 c2( c16[ d\mordent c b] c32[ d c b]  
\times 2/3 { c[ d c] } b[ a]) 
\bar ""
b4.( c32[ b a b] c[ b a b] c[ b b16]) \bar "" g4.( a8) \bar ""
\acciaccatura a8 b4( a16\prall[ g^"↑"] a32[ b a g^"↑"]) 
\afterGrace g2.\( { aes16[ g f]\) } r4 r
\bar ""
\iii g8 
\varA
\acciaccatura g8\startTextSpan aes!4( bes8[ \grace { \stdB c\( \stdE } 
\times 2/3 { bes!16\) aes! g] } aes!16[ bes! aes g\stopTextSpan]) \bar ""
g4  \bar "" aes!8.\prall([ s^\ltoe g16])  \bar ""
\acciaccatura b8 c2( d32[ c b c] d[ c b a])  \bar ""
\afterGrace b4(\( { a16[ b]\) } c32[ b a16])  \bar ""
a[( g8.-\parenthesize^"↑"]) g4-\parenthesize^"↑" g1~ g4-\parenthesize^"↑"
 \bar "|." 
s4 \fixB d \fixC
 \bar "|."  
 s16 \clef treble 
 \varA
\acciaccatura g8\startTextSpan aes4( b!8^"↓"[ \grace { \stdB c\( \stdE } 
\times 2/3 { b16^"↓"\) aes! g] } aes!16[ b!^"↓" aes g\stopTextSpan]) 
 \bar "|."  
}
\addlyrics { и По- ма- мил бе- ше Ка- ра- джа 
и пет- сто- тян ва- кли йов- не- та }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 69 4)
		}
	}
}
%
\header{
  opus = "ТД-134,2,13"
  tagline = ##f
}


