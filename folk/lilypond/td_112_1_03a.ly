%{
TD_112_1_03a
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 8 = 160
%\time 5/16
\cadenzaOn
\phrasingSlurDown
d16[( c^↑]) d8.[( c!16]) 
\varA
s64\startTextSpan b4\stopTextSpan 
\varB
s64\startTextSpan b8\stopTextSpan 
\varC
s64\startTextSpan \acciaccatura b8\stopTextSpan 
\afterGrace d1\fermata(\( { c16[ b]\) }
c[ b a8]) r d16[( c!]) \afterGrace d4(\( { c16[ b]\) } c[ b])
\bar ""
\afterGrace b1\fermata\( { c16[ b a]\) } r8 \bar "" 
d16[( c^↑]) \bar "" d8.[( c!16]) \bar ""
\acciaccatura b8 c8.[( b16]) 
\varD
a8\startTextSpan \acciaccatura b c1\stopTextSpan\fermata( 
\afterGrace d8\( { c16[ b]\) }
c\prall[ b a8]) r 
\varE
a8\startTextSpan b\stopTextSpan\noBeam 
b1\fermata
 \bar "|." 
s4 \fixB a \fixC
 \bar "|." 
s64 \clef treble
\varA
s16\startTextSpan b4.\stopTextSpan \bar "||"
\varB
s64\startTextSpan d8\stopTextSpan \bar "||"
\varC
s64\startTextSpan \grace { \stdB c8\stopTextSpan \stdE } \bar "||"
\varD
a16\startTextSpan\noBeam b( c1\stopTextSpan\fermata) \bar "||"
\varE
a16\startTextSpan b32[( c\stopTextSpan]) 
 \bar "|."  
}
\addlyrics { Слън- це- то треп- ти, зай- де- ва, Ди- ми- тър че- към за- хва- ща }
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
		tempoWholesPerMinute = #(ly:make-moment 160 8)
		}
	}
}
%
\header{
  opus = "ТД-112,1,3a"
  tagline = ##f
}


