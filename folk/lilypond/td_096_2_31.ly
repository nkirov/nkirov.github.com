%{
TD_096_2_31
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 72
%\time 5/16
\cadenzaOn
\override Glissando #'style = #'zigzag
\phrasingSlurDown
\acciaccatura c8 d4 \afterGrace c8[(\( { \stdB d\) \stdE } c16 b])
\acciaccatura { c16[ d c b] } c2(~ 
\varA
c8\startTextSpan[ \afterGrace d]\( { \stdB b\stopTextSpan\) \stdE } 
\grace { c16[\( d c b] } \afterGrace a2\))\( { \stdB b8\) \stdE } c4 \bar ""
\times 2/3 { b8 a4 }
\bar ""
c16[( b \grace { c[\( b] } a8\)]) \bar "" g2. r4
\bar ""
\acciaccatura g8 \noteFi \afterGrace a4\glissando\( { \stdB c8\) \stdE } 
b\prall[( a]~ a4) a1\fermata
 \bar "|." 
s4 \fixB d, \fixC
 \bar "|."  
s16 \clef treble
\varA
c'8\startTextSpan[ \afterGrace d]\( { c16[ b\stopTextSpan\)] }  
 \bar "|."  
}
\addlyrics { Ни- вя- сто, об- за- ло- жи се ни- вя- ста }
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
		tempoWholesPerMinute = #(ly:make-moment 72 4)
		}
	}
}
%
\header{
  opus = "ТД-96,2,31"
  tagline = ##f
}


