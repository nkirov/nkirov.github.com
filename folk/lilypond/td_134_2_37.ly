%{
TD_134_2_37
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 144
 \time 2/4
% \tempo 8 = 168
% \time 7/16
\set Score.measureLength = #(ly:make-moment 1 4)
\ii e4 |
\set Score.measureLength = #(ly:make-moment 2 4)
g8([ a)] a\prall([ g)] | g([ a)] a4 | 
\parS
a8-\parenthesize\prall( g4.) | a4 a8\prall([ g)] | 
\varA
g\startTextSpan([ a] a4\stopTextSpan\prall) |
g8^\ltoe([ f)] e4 | g g8\prall([ f)] | e2~ | e | e4^\ltoe e^\rtoe | e2  
 \bar "|."
 s4 \fixB d4 \fixC
 \bar "|."
 \endm
\varA
g8\startTextSpan([ a] \acciaccatura { b16[\( a g] } a4\stopTextSpan)\) |
 \bar "|."
}
\addlyrics { и Бре, де "са~й" чу- ло- ви- дя- ло, 
               бре, де "са~й" чу- ло- ви- дя- ло }
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
		tempoWholesPerMinute = #(ly:make-moment 144 4)
		}
	}
}
%
\header{
  opus = "ТД-134,2,37"
  tagline = ##f
}


