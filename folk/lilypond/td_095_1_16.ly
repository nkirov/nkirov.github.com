%{
TD_095_1_16
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 120
%\time 5/16
\cadenzaOn
\phrasingSlurDown
c4 c8[( d] c16[ d c b] c4) 
\varA
\acciaccatura b8\startTextSpan c8.[( b16] a1\stopTextSpan) 
b4^\rtoe c8[( d] c[ d]
c16[ d c b] c4 c8\prall[ b] 
\bar ""
c4 \grace { \stdB c8\( \stdE } b[\) c] 
\varB
c\startTextSpan[ b\stopTextSpan\prall^\ltoe] 
a1\fermata) r4 \bar ""
b4^\rtoe c8[( d] c[ d] \grace { \stdB d\( \stdE } c16[\) b8.] c8[ d])
\bar ""
b8^\rtoe[( c] b^\rtoe[ c] \grace { \stdB d\( \stdE } c[\) b]) b16[( a8.]) a1.\fermata
 \bar "|." 
s4 \fixB e \fixC
 \bar "|."  
s16 \clef treble
\varA
\acciaccatura b'8\startTextSpan c8.[( \grace { b16[\( c] } b16]\) a1\stopTextSpan) \bar "||"
\varB
\acciaccatura d8\startTextSpan c[ b\stopTextSpan\prall^\ltoe] 
 \bar "|."   
}
\addlyrics { Тур- чин ми ка- ра кле- та ро- би- ня }
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
		tempoWholesPerMinute = #(ly:make-moment 120 4)
		}
	}
}
%
\header{
  opus = "ТД-95,1,16"
  tagline = ##f
}


