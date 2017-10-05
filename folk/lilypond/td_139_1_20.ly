%{
TD_139_1_20
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 126
  \time 2/4
\varA
\acciaccatura d8\startTextSpan c4 c8([ d]) | d4 d | d8\prall([ c] d16[ c b8\stopTextSpan]) | 
d8([ c]) d16([ c b8]) | g2 | 
\varB
d'8\startTextSpan([ c]) c4\stopTextSpan | 
\varC
\acciaccatura d8\startTextSpan c8([ b]) a4\stopTextSpan | 
\parS
a2-\parenthesize\fermata | 
\varD
a8\startTextSpan([ g]) a4 | a2\stopTextSpan\fermata 
\bar "|."
s4 \fixB gis4 \fixC
\bar "|."
\endm
\varA
d'4\startTextSpan\mordent c8([ d]) | d8([ c)] d4\mordent | 
d8\noBeam\mordent( \slurDown \afterGrace c4.)( { d16[ c b\stopTextSpan]) } \slurNeutral \bar "||"
\varB 
g4\startTextSpan c\stopTextSpan \bar "||"
\varC
c4\startTextSpan c8([ b\stopTextSpan]) \bar "||"
\varD
a4\startTextSpan a | a4 r4\stopTextSpan 
 \bar "|." 
}
\addlyrics { Па- ун на Стан- ка ду- ма- ше: Стан- ке ле, ма- ри ху- ба- ва }
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
		tempoWholesPerMinute = #(ly:make-moment 126 4)
		}
	}
}
%
\header{
  opus = "ТД-139,1,20"
  tagline = ##f
}


