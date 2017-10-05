%{
sva_139_1_01
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 120
\time 2/4
\phrasingSlurDown
g4 a | a \acciaccatura c8 d4 | 
\varA
d8\startTextSpan\mordent([ c~] c16[ d c b\stopTextSpan]) | 
\varB
d16\startTextSpan([ c8.]) d16[( c b8\stopTextSpan]) |
b16[( a8.~] a8\noBeam) r8 | 
\varCD
b4\startTextSpan c\stopTextSpan | 
\varE
d16\startTextSpan[( c b8]) b16[( a8.\stopTextSpan]) | 
a2 | a4 a | a2\fermata
 \bar "|." 
s4 \fixB a \fixC
  \bar "|." 
\endm
\varA
\acciaccatura d8\startTextSpan c4( d16[ c b8\stopTextSpan]) \bar "||"
\varB
d16\startTextSpan([ c8.]) c8[( b\stopTextSpan]) \bar "||"
\varC
a8\startTextSpan([ b]) c4\stopTextSpan \bar "||"
\varD
a4\startTextSpan c\stopTextSpan \bar "||"
\varE
c8\startTextSpan[( b]) a4\stopTextSpan 
   \bar "|." 
\break
g4^"или" a | a \acciaccatura c8 d4 | 
\varF
\acciaccatura { d16\startTextSpan[ c d] } \afterGrace c2\( { d16[ c b\stopTextSpan]\) } |
\acciaccatura d8 c4 \acciaccatura { d16[ c] } b4 | \acciaccatura b8 a4. r8 | b4 c | 
\acciaccatura { d16[ c] } b4 \acciaccatura b8 a4 | a2 | a4 a | a2\fermata
\bar "|." 
\endm
\varF
d8\startTextSpan\mordent( \afterGrace c4\( { d16[ c]\) } b8\stopTextSpan) 
\bar "|." 
}
\addlyrics { До- бра йе змий- ка лю- би- ла, май- ка си ни е ка- за- ла }
%
\layout {
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
  opus = "ТД-139,1,1"
  tagline = ##f
}


