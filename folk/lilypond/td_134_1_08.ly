%{
TD_134_1_08
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 84
%\time 5/16
\cadenzaOn
\phrasingSlurDown
\override Glissando #'style = #'zigzag
b4 a 
\varA
\acciaccatura d8\startTextSpan e2.( \times 2/5 { f16[ e d e d\stopTextSpan]) } 
d4 e8\prall[( d]) 
\varB
e8\startTextSpan[( d16]~ d4) \acciaccatura d8 \times 2/3 { c8[( b a]) } a2.\stopTextSpan 
r4 \acciaccatura c8 d4 e8[( d])
\bar ""
\varC
\acciaccatura d8\startTextSpan \afterGrace e4(\( { d16[ c]\) } d4~ d16[ c b a]) d[( c])
\acciaccatura c8 \afterGrace d4.\( { c16[ b]\) } b8 b\noBeam~ b2.\stopTextSpan 
r4 a8[( b]~ b4^\ltoe) b1~ b2
 \bar "|." 
s4 \fixB a, \fixC
 \bar "|." 
s16 \clef treble
\varA
\acciaccatura d'8\startTextSpan e2.( \times 2/6 { f16[ e d e d c\stopTextSpan]) } \bar "||"
\varB
\afterGrace e4\startTextSpan(\( { d16[ c]\) } d2) d16[( c b a]) a1~ a4\stopTextSpan \bar "||"
\varC
\acciaccatura d8\startTextSpan \afterGrace e4(\( { d16[ c]\) } d2. e8[ d16 c] d16.[ c32 b16])
a\noBeam \acciaccatura c8 d16.([ c32^↑] \grace { \stdB c8\( \stdE } \afterGrace d4\)\( { c16[ b c]\) } 
\noteFi d16.[\glissando c32]) b16\noBeam b8.~ b2.\stopTextSpan 
 \bar "|."  
}
\addlyrics { Слън- це- то треп- ти, за- хо- да съ- бо- та спор- де ни- дя- а- ля }
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
		tempoWholesPerMinute = #(ly:make-moment 84 4)
		}
	}
}
%
\header{
  opus = "ТД-134,1,8"
  tagline = ##f
}


