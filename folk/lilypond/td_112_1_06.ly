%{
td_112_1_06
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 8 = 176
\cadenzaOn
\phrasingSlurDown
g8 
\varA
\afterGrace a2\startTextSpan\fermata\( { b16[ a g\stopTextSpan]\) } 
\varB
s8\startTextSpan c8\stopTextSpan 
\acciaccatura d8 e1\fermata 
\parS
e4.-\parenthesize\prall( d8 
\varC
\grace { e16\startTextSpan[\( d] } c4\stopTextSpan\)) 
r4 
\varD
d16\startTextSpan[( e\stopTextSpan]) 
\afterGrace d2.\fermata(\( { c16[ b]\) } 
\varE
\afterGrace c8\startTextSpan\( { \stdB b\stopTextSpan\) \stdE } 
a32[ b g16])
\varF
\afterGrace a1\startTextSpan\fermata\( { b16[ a g\stopTextSpan]\) } r4
\bar ""
a16[( b]) c8([ d]) b8\noBeam c8.[( b16]) \acciaccatura { a16[ b] } g4
\varG
s8\startTextSpan a8\stopTextSpan 
a2\fermata g8 r a16[( b]) 
\varH
c8\startTextSpan([ d\stopTextSpan]) 
b8
\bar ""
c8.[( b16]) 
\varIJ
\acciaccatura { a16\startTextSpan[ b] } g4\stopTextSpan
\varK
a16\startTextSpan a\stopTextSpan\noBeam 
a1\fermata
 \bar "|." 
s4 \fixB fis \fixC
 \bar "|."
%% s16 \clef treble
\break
\varA
\afterGrace a2\startTextSpan\fermata\( { \stdB b8\stopTextSpan\) \stdE } \bar "||"
\varB
s16\startTextSpan c16\stopTextSpan \bar "||"
\varC
\grace { e16\startTextSpan[\( d] } c8\stopTextSpan\) \bar "||"
\varD
s16\startTextSpan d8\stopTextSpan \bar "||"
\varE
\afterGrace c4\startTextSpan\( { \stdB b8\stopTextSpan\) \stdE } \bar "||"
\varF
\afterGrace a1\startTextSpan\fermata\( { \stdB b8\stopTextSpan\) \stdE } \bar "||"
\varG
s8\startTextSpan a16\stopTextSpan \bar "||"
\varH
c8\startTextSpan([ d e\stopTextSpan]) \bar "||"
\varI
\acciaccatura { a,8\startTextSpan } g4\stopTextSpan \bar "||"
\varJ
a8\startTextSpan[( g\stopTextSpan]) \bar "||"
\varK
a8\startTextSpan a\stopTextSpan\noBeam 
\bar "|."
}
\addlyrics { За- пла- ка- ла йе И- рин- ка на И- рин Пи- рин пла- ни- на, 
на Сто- я- но- ва гроб- ни- на }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 176 8)
		}
	}
}
%
\header{
  opus = "ТД-112,1,6"
  tagline = ##f
}


