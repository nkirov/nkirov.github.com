%{
TD_112_1_04
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 126
%\time 5/16
\cadenzaOn
\acciaccatura b8 c4 c b \acciaccatura c8 d4^↓ 
\varA
\afterGrace a1\startTextSpan\fermata\( { b16[ a g\stopTextSpan]\) }
g8[( a]) 
\varB
\afterGrace a2.\startTextSpan(\( { \stdB g8\stopTextSpan\) \stdE } 
a[ g]) g1\fermata r4 r
\bar ""
g8[( a]) g4 
\varC
g1\startTextSpan( f4\stopTextSpan) 
g8[( a]) 
\varD
a1\startTextSpan( g4\stopTextSpan) 
g8[( a])
\varE
g4.\startTextSpan( f8~ f[ e16 f] \times 2/3 { g16[ f e ] } d[ e\stopTextSpan]) 
c1\fermata r4 r
\bar ""
f2. g8[( a]) \afterGrace a1\fermata(\( { g16[ a]\) } bes16[ a g a] 
\varF
bes!\startTextSpan[ a g f\stopTextSpan]) 
r4 g8[( a])
\varGH
g1\startTextSpan( f8\prall[ \times 2/3 { e16 f g\stopTextSpan]) }
\bar ""
\varI
f16\startTextSpan[( e]) d8\stopTextSpan 
d1\fermata
 \bar "|." 
s4 \fixB d \fixC
 \bar "|." 
s16 \clef treble
\varA
\afterGrace a'1\startTextSpan\fermata\( { \stdB g8\stopTextSpan\) \stdE } \bar "||"
\varB
\afterGrace a2.\startTextSpan\( { b16[ a g\stopTextSpan\)] } \bar "||"
\varC
\afterGrace g1\startTextSpan\( { \stdB f8\stopTextSpan\) \stdE } \bar "||"
\varD
\afterGrace a1\startTextSpan\fermata\( { \stdB g8\stopTextSpan\) \stdE } \bar "||"
\varE
g4\startTextSpan( f16[ e f] g16[ f e d\stopTextSpan]) \bar "||"
\varF
\times 2/5 { bes'!\startTextSpan[( a g a f\stopTextSpan]) } \bar "||"
\varG
\afterGrace g1\startTextSpan(\( { a16[ g]\) } f8\prall[ \times 2/3 { e16 f g\stopTextSpan]) } \bar "||"
\varH
g1\startTextSpan\fermata( f16[ e] \times 2/3 { e16[ f g\stopTextSpan]) } \bar "||"
\varI
f8\startTextSpan[( e]) d\stopTextSpan 
 \bar "|."  
}
\addlyrics { За- ви- дял Гьор- ги, за- ви- дял на бра- то- во си и- ма- не, 
на бра- то- во си~й бу- ли- но }
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
		\Score
		tempoWholesPerMinute = #(ly:make-moment 126 4)
		}
	}
}
%
\header{
  opus = "ТД-112,1,4"
  tagline = ##f
}


