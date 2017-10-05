%{
td_134_1_35
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 120
\cadenzaOn
\phrasingSlurDown
\override Glissando #'style = #'zigzag
\iii a8
d4 d1 \acciaccatura { d16[ e d] } c2. \acciaccatura c8 d4 d2
e16[( d c d]) \acciaccatura d8 \afterGrace c2(\( { \stdB b8\) \stdE } a4) 
a2.( b16[ a g8]) r4 c16[( b a8]) b2(~ b8[ c])
\bar ""
d16[( e d c] d8[ c] c[ d]) 
\varA
s4\startTextSpan d4\stopTextSpan\mordent 
\acciaccatura d8 c2( d16[ c b8]) \noteFi b[(\glissando a]) a2. a1~ a2
\stemUp \noteFi g'4\glissando\hideNotes b,16 \unHideNotes \stemNeutral
 \bar "|." 
s4 \fixB e, \fixC
 \bar "|."  
 s16 \clef treble
\varA
c'8\startTextSpan[( d\stopTextSpan])
 \bar "|."  
}
\addlyrics { и Ра- де вай- во- да ду- ма- ше: Лю- бе вай- во- до, вай- во- до }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 120 4)
		}
	}
}
%
\header{
  opus = "ТД-134,1,35"
  tagline = ##f
}


