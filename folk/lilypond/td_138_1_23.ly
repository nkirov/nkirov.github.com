%{
TD_138_1_23
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 120
  \time 2/4
b4 c | 
\varA
d\startTextSpan c\stopTextSpan | 
b2 | c4 d | 
\varBC
c8\startTextSpan( d4 c8\stopTextSpan) | 
\varD
d4\startTextSpan b\stopTextSpan | 
\varE
c\startTextSpan c\stopTextSpan\prall | 
b2 | b4 b | b2\fermata
 \bar "|."
 s4 \fixB e,4 \fixC
 \bar "|."
\endm 
 \varA
d'\startTextSpan \acciaccatura d8 c4\stopTextSpan | 
\varB
c8\startTextSpan( d4 \phrasingSlurDown \acciaccatura { e16\([ d] } c8\)\stopTextSpan) \phrasingSlurNeutral |
\varC
c8\startTextSpan( d4.\stopTextSpan) |
\varD
c4\startTextSpan b\stopTextSpan | 
\varE
c\startTextSpan d8([ c\stopTextSpan)]
 \bar "|." 
}
\addlyrics { Ма- ри ху- ба- ва Ка- лин- ко, на ко- му ма- ма каз- ва- ше }
%
\layout {
  indent = #0
  line-width = 190\mm
  ragged-right=##f
}
%
\midi { 
	\context {
		\Score
		tempoWholesPerMinute = #(ly:make-moment 120 4)
		}
	}
}
%
\header{
  opus = "ТД-138,1,23"
  tagline = ##f
}


