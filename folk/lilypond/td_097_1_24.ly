%{
TD_097_1_24
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 60
%\time 5/16
\cadenzaOn
\key f \major
\phrasingSlurDown
%%\key c \minor
\acciaccatura g8 a4 a16[( bes8 a16]) \acciaccatura a8 
bes2(~ bes16[ \grace { c16[\( bes] } c32\) bes] a16[ bes]) 
bes16[( \grace { c16[\( bes] } c32\) bes] \times 2/3 { a16[ bes c]) } a2^\rtoe a2. \breathe
\bar ""
\acciaccatura g8 \afterGrace a4\( { \stdB bes8\) \stdE } c32[( bes c bes] 
\grace { \stdB a8\( \stdE } bes\)~ bes4 c32[ bes c bes] a16[ s^\rtoe bes])
bes16[( \grace { c16[\( bes] } c32\) bes] \times 2/3 { a16[ bes c]) } a2 a2.
 \bar "|." 
s4 \fixB c,
 \bar "|."  
}
\addlyrics { И- ле- но, И- лен- ке, сна- хо най- мал- ка }
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
		tempoWholesPerMinute = #(ly:make-moment 60 4)
		}
	}
}
%
\header{
  opus = "ТД-97,1,24"
  tagline = ##f
}


