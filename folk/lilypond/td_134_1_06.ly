%{
sva_134_1_06
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 120
%%\time 2/4
\cadenzaOn
\phrasingSlurDown
\varA
b2\startTextSpan \acciaccatura { c16[ b a b] } c2 \acciaccatura c8 b4( g\stopTextSpan) 
a1 b4( \grace { \stdB c8\( \stdE } b\)[ a]) b2^\ltoe b1( c16[ b a b] c[ b a8]~ a1 b16[ a f8]) r4
\varB
b2\startTextSpan a4( c\stopTextSpan) 
\bar ""
\acciaccatura c8 b4( \grace { \stdB c8\( \stdE } b\)[ g]) 
\varC
s8\startTextSpan a1\stopTextSpan 
b4( \grace { \stdB c8\( \stdE } b\)[ a]) b2^\ltoe b1~ b fis'4  
 \bar "|." 
s4 \fixB e, \fixC
  \bar "|." 
s16 \clef treble
\varA
b'2\startTextSpan a4 c b\( \acciaccatura c8 b8[ g\stopTextSpan\)]  \bar "||"
\varB
b2\startTextSpan a4 c\stopTextSpan \bar "||"
\varC
\afterGrace a1\startTextSpan( { b16[ a g\stopTextSpan]) }
 \bar "|."   
}
\addlyrics { И- ван стре- ля стре- ли- те, стре- ли- те му па- да- ха и }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 120 4)
		}
	}
}
%
\header{
  opus = "ТД-134,1,6"
  tagline = ##f
}


