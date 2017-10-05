%{
TD_138_1_04
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 112
  \time 2/4
a4 \acciaccatura c8 d4 | 
\varAB
d16\startTextSpan([ e8.] d4\stopTextSpan) | 
\varC
\parS
\acciaccatura d8\startTextSpan e4 e8-\parenthesize\prall([ d\stopTextSpan]) | 
\varDE
d4.\startTextSpan( c8\stopTextSpan) | 
\varF
d4\startTextSpan c\stopTextSpan | 
%%\break
a c | 
\varG
\acciaccatura c8\startTextSpan d4( \times 2/3 { e8[ d c\stopTextSpan]) } | 
\break
\varH
d4\startTextSpan c\stopTextSpan | 
\varI
a\startTextSpan a\stopTextSpan | a2
 \bar "|." 
 s4 \fixB f4 \fixC
\bar "|." 
\endm
\varA
d'16\startTextSpan([ e8.] d16[ e8 d16\stopTextSpan)] \bar "||"
\varB
d16\startTextSpan([ e8.] f16[ e d8\stopTextSpan)] \bar "||"
\varC
\acciaccatura d8\startTextSpan e4 e16([ d8.\stopTextSpan]) \bar "||"
\break
\varD
d4\startTextSpan( \times 2/3 { e8[ d c\stopTextSpan)] } \bar "||" 
\varE
d4.\startTextSpan( \times 2/3 { e16[ d c\stopTextSpan)] } \bar "||" 
\varF
\acciaccatura c8\startTextSpan d4 c\stopTextSpan \bar "||" 
\varG
\acciaccatura c8\startTextSpan d4.( c8\stopTextSpan)  \bar "||" 
\varH
\override Glissando #'style = #'zigzag
d4\startTextSpan \noteFi c8.-\parenthesize\prall\glissando[( bes16\stopTextSpan)] \bar "||"
\varI
a8\startTextSpan a4.\stopTextSpan
\bar "|." 
}
\addlyrics { Ве- лик- ден, ма- мо, Гьор- ги ден, гиз- да- ва Мур- гаш пла- ни- на }
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
		tempoWholesPerMinute = #(ly:make-moment 112 4)
		}
	}
}
%
\header{
  opus = "ТД-138,1,4"
  tagline = ##f
}


