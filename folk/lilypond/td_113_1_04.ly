%{
laz_113_1_04
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 168
 \time 2/4
\varA 
g4\startTextSpan a\stopTextSpan | 
\varB
\set Score.measureLength = #(ly:make-moment 3 4)
s4\startTextSpan a2\stopTextSpan | 
\set Score.measureLength = #(ly:make-moment 2 4)
c4 c8( b) | g4 a8( b) | 
\varC
b4.\startTextSpan( a16 g\stopTextSpan) | 
g8 a4. | a4.( g8) | 
\varD
c4\startTextSpan c8( b\stopTextSpan) | 
g8 a4. | a2
 \bar "|." 
s4 \fixB cis, \fixC 
  \bar "|."
\endm  
\varA 
g'8\startTextSpan a4.\stopTextSpan \bar "||"
\varB
a4.\startTextSpan( g8\stopTextSpan) \bar "||"
\varC
\set Score.measureLength = #(ly:make-moment 3 4)
s4\startTextSpan b2\stopTextSpan \bar "||" 
\set Score.measureLength = #(ly:make-moment 2 4)
\varD
c8\startTextSpan c4( b8\stopTextSpan) 
 \bar "|."
}
\addlyrics { За- що при- бър- за, Ла- за- ре, да до- диш тол- ко- ва ра- но }
%
\layout {
  indent = #0
  line-width = 190\mm
  ragged-right=##f
}
%
\midi { 
	\context {
		\Score
		tempoWholesPerMinute = #(ly:make-moment 168 4)
		}
	}
}
%
\header{
  opus = "ТД-113,1,4"
  tagline = ##f
}


