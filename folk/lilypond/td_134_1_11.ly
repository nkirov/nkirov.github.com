%{
TD_134_1_11
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 126
%\time 5/16
\cadenzaOn
\phrasingSlurDown
\par
{ \iii \parenthesize  a8 }
\override Glissando #'style = #'zigzag
\parS
d4 \acciaccatura d8 \afterGrace c2-\parenthesize^\rtoe\( { \stdB b8\) \stdE } 
d[( c]) b4.^\ltoe( a8) b4
\varA
b1\startTextSpan(~ b4 a1)\stopTextSpan r4
\bar ""
\varB
\acciaccatura c8\startTextSpan d4 \acciaccatura d8 
\afterGrace c2-\parenthesize^\rtoe\( { \stdB b8\) \stdE } d[( c\stopTextSpan]) 
\varCD
b8.\startTextSpan( a16[ g\stopTextSpan]) 
a4 a1~ a2 
\par
\stemUp \ii \parenthesize e'4 \stemNeutral
 \bar "|." 
s4 \fixB a,, \fixC
 \bar "|." 
s16 \clef treble
\varA
a'1\startTextSpan( g4\stopTextSpan) \bar "||"
\varB
\acciaccatura c8\startTextSpan d4 c8[( d32 c b c] d4) c\stopTextSpan \bar "||"
\varC
b8.\startTextSpan( a8\stopTextSpan) \bar "||"
\varD
b8.\startTextSpan(\glissando g8\stopTextSpan) 
 \bar "|."  
}
\addlyrics { и  Я- но, ма- ла мо- ме, що си за- мрък- на- ла и }
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
		\Score
		tempoWholesPerMinute = #(ly:make-moment 126 4)
		}
	}
}
%
\header{
  opus = "ТД-134,1,11"
  tagline = ##f
}


