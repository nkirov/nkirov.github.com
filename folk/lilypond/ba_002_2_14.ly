%{
BA_2_2_14
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
g8 a16([ b]) c8( b) | 
\parG
\afterGrace a2( { \stdB \parenthesize g8) \stdE } | 
\gliss
b4 b | d8( c) \noteFi b8\glissando( a) | 
\varA
d8\startTextSpan\noBeam c c( b\stopTextSpan) |
\break
\afterGrace a2( { \stdB \parenthesize g8) \stdE } | 
g4 a | 
\varB
a\startTextSpan a\stopTextSpan 
 \bar ":|" 
\endm
\varA
g8\startTextSpan\noBeam a16( b) c8( b\stopTextSpan) \bar "||" 
\varA
a8\startTextSpan\noBeam d c( b\stopTextSpan) \bar "||" 
\varB
a4\startTextSpan a8( g\stopTextSpan) 
\bar "|."
}
\addlyrics { Ка- ла- фи- рьо ру- ян, бро- ян, ка- то рас- теш на пла- ни- на  }
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
		tempoWholesPerMinute = #(ly:make-moment 152 4)
		}
	}
}
%
\header{
  opus = "ВА-2,2,14"
  tagline = ##f
}


