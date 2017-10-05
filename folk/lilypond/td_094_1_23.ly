%{
td_094_1_23
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 8 = 84
\cadenzaOn
\phrasingSlurDown
\varA
s8\startTextSpan e8\stopTextSpan 
\varB
\afterGrace c\startTextSpan\noBeam\( { \stdB d8\stopTextSpan\) \stdE } 
\varC
\acciaccatura d8\startTextSpan \afterGrace e8[(\( { d16[ e]\) } \grace { d16[\( c] } d8\stopTextSpan]\))
d16[( e]) \acciaccatura e8 d
\varD
d16\startTextSpan[( e d e\stopTextSpan]
\varE
\grace { d16\startTextSpan[\( c] } d8\stopTextSpan\)) d16\noBeam
\bar ""
\acciaccatura { d16[ e d c] } d16\noBeam( 
\varF
\grace { c16\startTextSpan[\( d c] } b\)[ c] d8\stopTextSpan\noBeam)
d \afterGrace d8\noBeam\( { \stdB c\) \stdE } \bar ""
\acciaccatura c8 d16[( \grace { c[\( b] } c\) \grace { b[\( a] } b8]\)) c8\noBeam
\afterGrace c\prall\( { \stdB b\) \stdE } b16[( c] b\prall[ a32 b]) a16 a\noBeam~ a4. \breathe
\bar ""
b8\noBeam \bar "" \acciaccatura c8 d \bar "" \acciaccatura { d16[ c] } 
d[( \grace { c[\( b] } c\) \grace { b[\( a] } b8\)]) \bar ""
c8\noBeam \afterGrace c\prall\( { \stdB b\) \stdE } b16[( c] b32[ c \grace { b16[\( c b a] } b\)]) \bar ""
a16 a\noBeam~ a4.\fermata
 \bar "|." 
s8 \fixB ees4 \fixC
 \bar "|." 
s16 \clef treble
\varA
d'16\startTextSpan[( e^\rtoe\stopTextSpan]) \bar "||"
\varB
e16\startTextSpan[( d\stopTextSpan)] \bar "||"
\varC
\acciaccatura d8\startTextSpan \afterGrace e8[(\( { d16[ e]\) } \grace { d16[\( e d c] } d8\stopTextSpan]\)) \bar "||"
\varD
e16\startTextSpan[ d e d\stopTextSpan] \bar "||"
\varE
\grace { d16\startTextSpan[\( e d c] } d8\stopTextSpan\) \bar "||"
\varF
\grace { c16\startTextSpan[\( d c b] } c4\stopTextSpan\noBeam^\ltoe\)
 \bar "|." 
}
\addlyrics { Съ- бра- ли ми са, на- бра- ли "в Кър-" джа- лий- ска- та ко- ри- я
кър- джа- лий- ски- те чо- ба- ни }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 84 8)
		}
	}
}
%
\header{
  opus = "ТД-94,1,23"
  tagline = ##f
}


