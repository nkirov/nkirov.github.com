%{
TD_171_2_07
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 120
  \time 2/4
d4 \acciaccatura f8 g4 
\varA
\acciaccatura g8\startTextSpan a4.( g8\stopTextSpan)
a( bes) a( g) 
\varB
\acciaccatura f8\startTextSpan g4~( \times 4/5 { g16[ a g f e\stopTextSpan)] }
\parS
f4 e8-\parenthesize-\prall( d) d( e) f( g) 
\varC
\acciaccatura f8\startTextSpan g4( a16[ g f e\stopTextSpan)] 
g8( e) f4 e8( d) d4 d2
 \bar "|."
\endm 
 \varA
 \acciaccatura g8\startTextSpan a4.( \times 2/3 { bes16[ a g\stopTextSpan)] } \bar "||"
 \varB
g16\startTextSpan([ f g8~] g16[ f e8\stopTextSpan)] \bar "||"
 \varC
g16\startTextSpan([ f g8~] g4\stopTextSpan)
 \bar "|."
}
\addlyrics { Ма- ма Пет- ра- на бу- де- ше: Сна- хо Пет- ра- но, Пет- ра- но }
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

\header{
  opus = "ТД-171,2,7"
  tagline = ##f
}


