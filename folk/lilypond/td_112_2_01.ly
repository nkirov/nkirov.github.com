%{
TD_112_2_01
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 8 = 176
%\time 5/16
\cadenzaOn
\phrasingSlurDown
g16[( b]) \afterGrace c8\( { b16[ a b]\) } 
\varA
\afterGrace a8.\startTextSpan\( { \stdB g8\stopTextSpan\) \stdE } 
a16[( b]) \afterGrace c2\fermata(\( { d16[ c b]\) } a[ g]) r8
\varB
a16\startTextSpan[( b]) \afterGrace c8.\( { b16[ a b\stopTextSpan]\) } 
a2\fermata r8
\bar ""
a8 \acciaccatura { b16[ a] } g8\noBeam \bar ""
\varC
s16\startTextSpan g8.\stopTextSpan \bar ""
a16[( bes]) \bar ""
\afterGrace bes!2\fermata\( { c16[ bes! a bes c]\) } \bar ""
\varD
\acciaccatura c8\startTextSpan bes!\noBeam \acciaccatura bes! a\stopTextSpan 
a2\fermata
 \bar "|." 
s8 \fixB a \fixC
 \bar "|." 
s16 \clef treble
\varA
s16\startTextSpan a4\stopTextSpan \bar "||"
\varB
c8.\startTextSpan\noBeam \afterGrace c8(\( { b16[ a b]\) }
\grace { c16[\( b] } a8\stopTextSpan\noBeam\)) \bar "||"
\varC
s16\startTextSpan g4\stopTextSpan \bar "||"
\varD
c16\startTextSpan[( bes!]) a8\stopTextSpan
 \bar "|."  
}
\addlyrics { Пу- сти му~й дреб- ни ска- кал- ци, ек- на- ли 
ни пре- млък- на- ли }
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
		tempoWholesPerMinute = #(ly:make-moment 176 8)
		}
	}
}
%
\header{
  opus = "ТД-112,2,1"
  tagline = ##f
}


