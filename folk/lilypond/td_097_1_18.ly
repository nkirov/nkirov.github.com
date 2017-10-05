%{
TD_097_1_18
%}

\include "td-preamble.ly"
\include "makam.ly"

\score {
\relative c'' {
\tempo 4 = 152
%\time 5/16
\cadenzaOn
\parG
\ii \parenthesize g8 
\override Glissando #'style = #'zigzag
a4 a8[( b^↓]) c[(\glissando b] bfk[\glissando a]~ a16[ bfk c8]) c[( b]) c2\mordent 
c8[( s^\rtoe b^↓]) a4^\ltoe a1.\fermata r4
\bar ""
\acciaccatura g8 a4 a8[( g]) a[( bfb]) c4 c8[( bfb!)] a4 a1( bfk4) 
\acciaccatura bfk!8( a1.\fermata)
 \bar "|." 
s4 \fixB d,
 \bar "|."  
}
\addlyrics { и Слън- ци ви- со- ко, Да- фи- но, ли- би да- ле- ко, Ни- ко- ла }
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
		tempoWholesPerMinute = #(ly:make-moment 152 4)
		}
	}
}
%
\header{
  opus = "ТД-97,1,18"
  tagline = ##f
}


