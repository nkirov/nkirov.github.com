%{
td_094_1_10
%}

\include "td-preamble.ly"
\include "makam.ly"

\score {
\relative c'' {
\tempo 4 = 66
\cadenzaOn
\phrasingSlurDown
a16[( b c b]) \afterGrace b4\( { c16[ b a]\) } \acciaccatura { a16[ b a] } g4
a16[( b c b]) \afterGrace b4\( { c16[ b a]\) } 
\varA
a16\startTextSpan[( b g8\stopTextSpan] 
\varB
g16\startTextSpan[ fc e8\stopTextSpan]~ 
e2)
\bar ""
\acciaccatura g8 a8.[( g16]) \bar "" \afterGrace b4\( { a16[ b a]\) } \bar ""
g32[( fc! e fc] g16[ fc!] g16.[ fc!32] e[ fc! e16]) 
\varC
s4\startTextSpan e2\stopTextSpan 
e2.
 \bar "|." 
s4 \fixB c \fixC
 \bar "|."  
  s16 \clef treble
\varA
a'16\startTextSpan[ b \grace { \stdB a8\( \stdE } g8\stopTextSpan]\) \bar "||"
\varB
g16\startTextSpan[ f e f\stopTextSpan] \bar "||"
\varC
s4\startTextSpan e4\stopTextSpan 
 \bar "|."    
}
\addlyrics { Би- е- я, два- ма са мом- ка би- е- я }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 66 4)
		}
	}
}
%
\header{
  opus = "ТД-94,1,10"
  tagline = ##f
}


