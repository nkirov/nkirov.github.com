%{
sva_140_2_34
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 2 = 54
%\time 2/4
\cadenzaOn
\phrasingSlurDown \stdB
b2 b b \acciaccatura c8 d8.([ c16 d8 c]) \afterGrace b2.\(( { \stdB a8\) } b[ a]) r4 r^\ltoe
d2\prall \times 2/3 e8[( d \grace d\( c]\) b[ a]) b2 b16([ c8.] \grace d8\( c\)[ s^\ltoe b])
\bar ""
a2. r4 \acciaccatura b8 c8.([ d16^\ltoe] d8[ c]) 
\afterGrace c4(\( { b16[ c]\) } s^\ltoe b8[ a]) a2 a4( b) b1
 \bar "|." 
s4 \fixB g
  \bar "|." 
}
\addlyrics { Треп- ти ми, треп- "ти, (я)" бя- ла ко- при- но, днес- ка жъ треп- тиш }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 54 2)
		}
	}
}
%
\header{
  opus = "ТД-140,2,34"
  tagline = ##f
}


