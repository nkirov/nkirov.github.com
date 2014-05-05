%{
TD_134_2_38
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 152
 \time 2/4
% \tempo 8 = 168
% \time 7/16
e4 g | 
\varA
a8\startTextSpan\prall([ g] 
\afterGrace a4)( { \stdB g8) \stdE } | 
a8([ g)] e4\stopTextSpan |
g8([ a] a\prall[ g)] |
\varB
a\startTextSpan([ g)] \acciaccatura g8 e4\stopTextSpan |
\varCD
e4\startTextSpan \acciaccatura e8 g4\stopTextSpan | 
\varEF
\acciaccatura a8\startTextSpan g8.([ a16] g8[ f\stopTextSpan]) |
g4 f8([ e]) | e2~ | 
\parS
e-\parenthesize\fermata | e4 e\fermata
 \bar "|." 
 s4 \fixB d4 \fixC
 \bar "|." 
 \endm
\varA
a'4\startTextSpan\prall( g) | g e\stopTextSpan \bar "||"
\varB
a8\startTextSpan([ g)] f16([ e d8\stopTextSpan]) \bar "||"
\varC
e8\startTextSpan([ f]) g4\stopTextSpan \bar "||"
\varD
e8\startTextSpan([ f]) g([ a)]\stopTextSpan \bar "||"
\varE
a8\startTextSpan([ g] a16[ g f8\stopTextSpan])  \bar "||"
\varF
g8\startTextSpan([ a16 g] f4\stopTextSpan)
 \bar "|." 
}
\addlyrics { Ден дой- де, лю- бе, ден дой- де, ден дой- де, 
ден Ди- ми- тров- ден }
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
  opus = "ТД-134,2,38"
  tagline = ##f
}


