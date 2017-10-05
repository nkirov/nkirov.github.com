%{
sva_180_2_18
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 120
%\time 2/4
\cadenzaOn
d8([ e]~ e2.) d8([ e] d\prall[ c]) d[( e]) e4 d8([ c]) d([ e]) e\prall([ d]) d([ e])
d4 d d8([ e]) e4 e8\prall([ d]) d([ e]) d4 d8([ c]) d1 d2
 \bar "|." 
s4 \fixB d
  \bar "|." 
}
\addlyrics { Ма- ле, ми- ла ма- ле, ко- я ра- но ра- ни, ко- я ра- но ра- ни }
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
  opus = "ТД-180,2,18"
  tagline = ##f
}


