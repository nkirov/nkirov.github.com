%{ 
  sva_140_2_35
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 2 = 52
%\time 2/4
\cadenzaOn
\phrasingSlurDown
\gliss
b2 b b \acciaccatura c8 d8.([ c16 s^\ltoe d8\prall c]) b2( c32[ b a16] g32[ a b16] a4) r4
\acciaccatura c8 d2 e16[( d c8] d16[ c b c]) b2( \grace { c16[\( b] } a8\)[ b] a4) r4
\bar ""
\acciaccatura b8 \afterGrace c4^\rtoe\( { d16[ c b]\) } \acciaccatura c8 b[( a])
a2 b8\mordent[\glissando( d16 c]) b4 a2 \acciaccatura a8 b4 b2.
 \bar "|." 
 s4 \fixB g
 \bar "|." 
}
\addlyrics { Ма- ма Сто- я- на гла- ви- ла и му йе пръ- стен ме- ни- ла }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 52 2)
		}
	}
}
%
\header{
  opus = "ТД-140,2,35"
  tagline = ##f
}


