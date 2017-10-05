%{
TD_112_1_03
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 8 = 264
%\time 5/16
\cadenzaOn
\phrasingSlurDown
\varA
g8\startTextSpan( a2\fermata)( \times 2/3 { b16[ a g\stopTextSpan]) }
\varB
a8\startTextSpan( b1\stopTextSpan\fermata)( 
c8[ b a] b16[ a g8]) r4. 
\varCD
b8\startTextSpan a\stopTextSpan\noBeam 
\varE
a2\startTextSpan\fermata( b16[ a g8\stopTextSpan]) 
\acciaccatura a8 b8.[( a16] g8) 
\varF
s64\startTextSpan r4\stopTextSpan
\bar ""
\varG
b8\startTextSpan a1\stopTextSpan\fermata 
r4 
\varH
a8\startTextSpan( b1\stopTextSpan\fermata)( 
c8) 
\varI
c16\startTextSpan[( b a b] c[ b a b]) a8 a1\stopTextSpan\fermata
 \bar "|." 
s4 \fixB bes \fixC
 \bar "|." 
s64 \clef treble
\varA
\acciaccatura g8\startTextSpan \afterGrace a2\fermata\( { \stdB g8\stopTextSpan\) \stdE } \bar "||"
\varB
\acciaccatura a8\startTextSpan b1\stopTextSpan\fermata \bar "||"
\varC
b8.\startTextSpan a16\stopTextSpan\noBeam \bar "||"
\varD
b16\startTextSpan a8.\stopTextSpan\noBeam \bar "||"
\varE
a4.\startTextSpan( b32[ a g16\stopTextSpan]) \bar "||"
\varF
s64\startTextSpan r8\stopTextSpan \bar "||"
\varG
a16\startTextSpan a\noBeam a1\fermata( b16[ a g8\stopTextSpan]) \bar "||"
\varH
\acciaccatura a8\startTextSpan b1\stopTextSpan\fermata \bar "||"
\varI
c16\startTextSpan[( b a b] c[ b a8]) a16\noBeam a~ a1\stopTextSpan\fermata
 \bar "|."  
}
\addlyrics { Съ- ньо, ти мой съ- ньо, що ма ра- но при- спа }
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
		tempoWholesPerMinute = #(ly:make-moment 264 8)
		}
	}
}
%
\header{
  opus = "ТД-112,1,3"
  tagline = ##f
}


