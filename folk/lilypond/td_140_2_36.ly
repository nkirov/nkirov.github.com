%{
sva_140_2_36
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 126
%\time 2/4
\cadenzaOn
\phrasingSlurDown
a4 b \afterGrace b2\(^\rtoe { \stdB a8\) } 
\acciaccatura c8 \afterGrace d4(\( { c16[ b]\) } a4) \acciaccatura c8 d4 c 
b4.( a16[ b]) a1 r4 a4 b b2~( b8[ a]) 
\bar ""
\acciaccatura c8 d( e] \grace { c16[\( b] } a4\)) c16^\ltoe[( d8.]) 
c16^\ltoe[( \afterGrace d8.])\( { \stdB c8\) } b2.~( b8[ a]) b1 
 \bar "|." 
 s4 \fixB g
 \bar "|."  
}
\addlyrics { Два са пер- ка сре- щу рас- ли, и- дин друг са пи- том пи- тат }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 126 4)
		}
	}
}
%
\header{
  opus = "ТД-140,2,36"
  tagline = ##f
}


