%{
sva_138_2_26
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 126
\time 2/4
\varA
a4\startTextSpan d\stopTextSpan | 
\varB
d\startTextSpan c8([ b\stopTextSpan]) | 
\varC
\set Score.measureLength = #(ly:make-moment 3 4)
s4\startTextSpan c2\stopTextSpan | 
\set Score.measureLength = #(ly:make-moment 2 4)
\varD
d4\startTextSpan c\stopTextSpan | 
\varE
\set Score.measureLength = #(ly:make-moment 3 4)
s4\startTextSpan b2\stopTextSpan |
\set Score.measureLength = #(ly:make-moment 2 4)
\varF
a4\startTextSpan \acciaccatura c8 d4\stopTextSpan | 
d d | 
\varG
\acciaccatura d8\startTextSpan c4.( \times 2/3 { d16[ c b\stopTextSpan]) } | 
\varH
b4\startTextSpan a\stopTextSpan | 
a2\fermata
 \bar "|." 
s4 \fixB g \fixC
 \bar "|." 
\break
\varA
a4\startTextSpan d8([ c\stopTextSpan]) \bar "||"
\varB
\acciaccatura e8\startTextSpan d4 d\stopTextSpan \bar "||"
\varC
\acciaccatura d8\startTextSpan c4( d16[ c b8\stopTextSpan]) \bar "||"
\varD
c4\startTextSpan c8\prall[( b\stopTextSpan]) \bar "||"
\varE
\slurDown \afterGrace b2\startTextSpan( { \stdB a8\stopTextSpan) \stdB } \slurNeutral \bar "||"
\varF
a4\startTextSpan c8[( b\stopTextSpan]) \bar "||"
\varG
c4\startTextSpan( d16[ c b8\stopTextSpan]) \bar "||" 
\varH
b8\startTextSpan([ a]) a4\stopTextSpan
 \bar "|." 
 }
\addlyrics { Сто- ян я- бъл- ка по- са- дил,  Сто- ян я- бъл- ка по- са- дил }
%
\layout {
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
  opus = "ТД-138,2,26"
  tagline = ##f
}


